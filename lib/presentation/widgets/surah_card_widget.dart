import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        // Card'ning o'z rangini ishlatadi
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Sura raqamini ko'rsatuvchi bezakli belgi
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/surah_number_bg.svg',
                    width: 45,
                    height: 45,
                    colorFilter: ColorFilter.mode(colors.primary, BlendMode.srcIn),
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
              // Sura nomlari va ma'lumotlari
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surah.uzbekName,
                      style: AppTextStyles.title.copyWith(fontSize: 18, color: colors.onSurface),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${surah.revelationPlace} • ${surah.ayahCount} oyat",
                      style: AppTextStyles.caption.copyWith(color: colors.onSurface.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              // Arabcha nomi
              Text(
                surah.name,
                style: AppTextStyles.amiriTitle.copyWith(
                    color: colors.primary,
                    fontSize: 22
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}