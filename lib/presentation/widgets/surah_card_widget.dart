import 'package:flutter/material.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';
import '../../core/constants/app_text_stylrs.dart';
import '../screens/ayahs_screen.dart';

class SurahCardWidget extends StatelessWidget {
  final SurahEntity surah;

  const SurahCardWidget({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AyahsScreen(surah: surah),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      shape: BoxShape.circle, // Yumaloq shakl uchun
                    ),
                    child: Text(
                      surah.number.toString(),
                      style: AppTextStyles.caption.copyWith(
                        color: colors.onPrimary,
                        // Bu yozuvning fon ustidagi rangi (oq)
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    surah.number.toString(),
                    style: AppTextStyles.caption.copyWith(
                      color: colors.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surah.uzbekName,
                      style: AppTextStyles.title
                          .copyWith(fontSize: 18, color: colors.onSurface),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${surah.revelationPlace} • ${surah.ayahCount} oyat",
                      style: AppTextStyles.caption.copyWith(
                          color: colors.onSurface.withValues(alpha: 0.6)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                surah.name,
                style: AppTextStyles.amiriTitle
                    .copyWith(color: colors.primary, fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
