// lib/data/datasources/remote_datasource.dart

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/core/constants/api_constants.dart';
import '../../core/network/network_exeptions.dart';
import '../models/ayah/ayah_model.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  return dio;
});

abstract class IRemoteDataSource {
  Future<List<AyahModel>> getAyahs(int surahNumber);
}

class RemoteDataSourceImpl implements IRemoteDataSource {
  final Dio _dio;
  RemoteDataSourceImpl(this._dio);

  @override
  Future<List<AyahModel>> getAyahs(int surahNumber) async {
    try {
      print("✅ [1] RemoteDataSource: getAyahs chaqirildi (sura: $surahNumber).");

      final response = await _dio.get(
        "${ApiConstants.surahEndpoint}/$surahNumber/editions/${ApiConstants.defaultAudioEdition},${ApiConstants.defaultTranslationEdition}",
      );

      print("✅ [2] API'dan javob keldi, statusCode: ${response.statusCode}.");

      if (response.statusCode == 200 && response.data['data'] is List) {
        final List<dynamic> editionsList = response.data['data'];

        if (editionsList.length < 2) {
          throw ServerException(message: "API kutilgan 2 ta nashrni qaytarmadi.");
        }

        print("✅ [3] Parsing jarayoni boshlanmoqda...");

        final EditionAyahsModel audioEdition = EditionAyahsModel.fromJson(editionsList[0]);
        print("✅ [4] Audio nashri muvaffaqiyatli o'girildi.");

        final EditionAyahsModel translationEdition = EditionAyahsModel.fromJson(editionsList[1]);
        print("✅ [5] Tarjima nashri muvaffaqiyatli o'girildi.");

        if (audioEdition.ayahs.length != translationEdition.ayahs.length) {
          throw ServerException(message: "Oyatlar soni mos kelmadi!");
        }

        List<AyahModel> combinedAyahs = [];
        for (int i = 0; i < audioEdition.ayahs.length; i++) {
          final audioAyahModel = audioEdition.ayahs[i];
          final translationText = translationEdition.ayahs[i].text;
          combinedAyahs.add(audioAyahModel.copyWith(translation: translationText));
        }

        print("✅ [6] Oyatlar muvaffaqiyatli birlashtirildi. Jarayon tugadi.");
        return combinedAyahs;
      }

      throw ServerException(statusCode: response.statusCode);

    } on DioException catch (e) {
      print("❌ [XATO-DIO] DioException yuz berdi: ${e.message}");
      print("    - Turi: ${e.type}");
      print("    - Javob: ${e.response?.data}");

      if (e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException();
      } else if (e.response != null) {
        throw ServerException(statusCode: e.response?.statusCode, message: "Server bilan xatolik");
      } else {
        throw NoInternetException();
      }
    } catch (e, stackTrace) {
      print("❌ [XATO-UMUMIY] Kutilmagan xatolik yuz berdi!");
      print("    - XATO TURI: ${e.runtimeType}");
      print("    - XATO MATNI: $e");
      print("    - XATO IZLARI (STACK TRACE): \n$stackTrace");
      throw UnknownException(message: "Ma'lumotlarni qayta ishlashda kutilmagan xatolik: $e");
    }
  }
}

final remoteDataSourceProvider = Provider<IRemoteDataSource>((ref) {
  return RemoteDataSourceImpl(ref.watch(dioProvider));
});