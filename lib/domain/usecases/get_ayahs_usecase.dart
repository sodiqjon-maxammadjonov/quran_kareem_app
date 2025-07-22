import 'package:quran_kareem/domain/entities/ayah_entity.dart';
import 'package:quran_kareem/domain/repositories/quran_repository.dart';


class GetAyahsUseCase {
  final IQuranRepository repository;

  GetAyahsUseCase(this.repository);

  Future<List<AyahEntity>> call(int surahNumber) async {
    return await repository.getAyahs(surahNumber);
  }
}