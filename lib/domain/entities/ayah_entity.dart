class AyahEntity {
  final int numberInSurah;
  final String text;
  final String? translation;
  final String? audioUrl;

  const AyahEntity({
    required this.numberInSurah,
    required this.text,
    this.translation,
    this.audioUrl,
  });
}