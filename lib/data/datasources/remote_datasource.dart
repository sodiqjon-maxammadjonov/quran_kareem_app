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
      final response = await _dio.get(
        "${ApiConstants.surahEndpoint}/$surahNumber/editions/${ApiConstants.defaultAudioEdition},${ApiConstants.defaultTranslationEdition}",
      );

      if (response.statusCode == 200 && response.data['data'] is List) {
        final List<dynamic> editionsList = response.data['data'];

        if (editionsList.length < 2) {
          throw ServerException(message: "API 2 ta nashr qaytarmadi.");
        }

        final EditionAyahsModel audioEdition =
            EditionAyahsModel.fromJson(editionsList[0]);

        final EditionAyahsModel translationEdition =
            EditionAyahsModel.fromJson(editionsList[1]);

        if (audioEdition.ayahs.length != translationEdition.ayahs.length) {
          throw ServerException(message: "Oyatlar soni mos kelmadi!");
        }

        List<AyahModel> combinedAyahs = [];
        for (int i = 0; i < audioEdition.ayahs.length; i++) {
          final audioAyahModel = audioEdition.ayahs[i];
          final translationText = translationEdition.ayahs[i].text;
          combinedAyahs
              .add(audioAyahModel.copyWith(translation: translationText));
        }

        return combinedAyahs;
      }

      throw ServerException(statusCode: response.statusCode);
    } catch (e) {
      throw UnknownException(
          message: "Ma'lumotlarni qayta ishlashda xatolik yuz berdi.");
    }
  }
}

// Provayder o'zgarishsiz qoladi
final remoteDataSourceProvider = Provider<IRemoteDataSource>((ref) {
  return RemoteDataSourceImpl(ref.watch(dioProvider));
});
