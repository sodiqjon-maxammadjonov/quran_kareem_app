import 'package:quran_kareem/domain/entities/surah_entity.dart';
import 'package:quran_kareem/domain/repositories/quran_repository.dart';

class GetAllSurahsUseCase {
  final IQuranRepository repository;

  GetAllSurahsUseCase(this.repository);

  Future<List<SurahEntity>> call() async {
    return await repository.getAllSurahs();
  }
}
