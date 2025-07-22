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
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true)); // Xatolikni topish uchun logger
  return dio;
});

abstract class IRemoteDataSource {
  Future<List<AyahModel>> getAyahs(int surahNumber);
}


// ENG MUHIM O'ZGARISH - SODDA VA ISHONCHLI MANTIQ
class RemoteDataSourceImpl implements IRemoteDataSource {
  final Dio _dio;
  RemoteDataSourceImpl(this._dio);

  @override
  Future<List<AyahModel>> getAyahs(int surahNumber) async {
    try {
      final response = await _dio.get(
        "${ApiConstants.surahEndpoint}/$surahNumber/editions/${ApiConstants.defaultAudioEdition},${ApiConstants.defaultTranslationEdition}",
      );

      // 1-QADAM: API javobi muvaffaqiyatli ekanligini tekshiramiz.
      if (response.statusCode == 200 && response.data is Map<String, dynamic>) {
        final Map<String, dynamic> responseBody = response.data;

        // 2-QADAM: Javobning ichki tuzilishi to'g'ri ekanligini tekshiramiz.
        // `data` kaliti mavjudmi va uning qiymati kamida 2 elementli ro'yxatmi?
        if (responseBody.containsKey('data') &&
            responseBody['data'] is List &&
            (responseBody['data'] as List).length >= 2) {

          final List<dynamic> editionsList = responseBody['data'];

          // 3-QADAM: JSON ma'lumotlarni o'zimizning modellarga aylantiramiz.
          // Hech qanday taxminlarsiz, to'g'ridan-to'g'ri.
          final EditionAyahsModel audioEdition = EditionAyahsModel.fromJson(editionsList[0]);
          final EditionAyahsModel translationEdition = EditionAyahsModel.fromJson(editionsList[1]);

          // Oyatlarni birlashtirish jarayoni
          List<AyahModel> combinedAyahs = [];

          // Suralardagi oyatlar soni bir-biriga tengligiga ishonch hosil qilamiz.
          if (audioEdition.ayahs.length != translationEdition.ayahs.length) {
            throw ServerException(message: "Tarjima va qiroat oyatlari soni mos kelmadi!");
          }

          // 4-QADAM: Modellardagi `ayahs` ro'yxatlarini birlashtiramiz.
          for (int i = 0; i < audioEdition.ayahs.length; i++) {
            final audioAyah = audioEdition.ayahs[i];
            final translationAyah = translationEdition.ayahs[i];

            combinedAyahs.add(
              // `audioAyah`ning nusxasini olib, unga tarjimani qo'shamiz
              audioAyah.copyWith(
                translation: translationAyah.text,
              ),
            );
          }
          return combinedAyahs;

        } else {
          // Agar `data` kaliti yoki uning tuzilishi noto'g'ri bo'lsa
          throw ServerException(message: "API javobining tuzilishi kutilganidek emas.");
        }
      } else {
        // Agar status kodi 200 bo'lmasa
        throw ServerException(statusCode: response.statusCode);
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout) {
        throw TimeoutException();
      } else if (e.type == DioExceptionType.unknown && e.message != null && e.message!.contains('SocketException')) {
        throw NoInternetException();
      } else if (e.response != null) {
        throw ServerException(statusCode: e.response?.statusCode, message: "Server bilan bog'lanishda xatolik");
      } else {
        throw UnknownException();
      }
    } catch (e) {
      throw UnknownException(message: "Ma'lumotlarni qayta ishlashda xatolik yuz berdi: $e");
    }
  }
}

final remoteDataSourceProvider = Provider<IRemoteDataSource>((ref) {
  return RemoteDataSourceImpl(ref.watch(dioProvider));
});