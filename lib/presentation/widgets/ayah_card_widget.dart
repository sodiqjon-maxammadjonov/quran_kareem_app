import 'package:flutter/material.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';

import '../../core/constants/app_text_stylrs.dart';

class AyahCardWidget extends StatelessWidget {
  final AyahEntity ayah;

  const AyahCardWidget({super.key, required this.ayah});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias, // ExpansionTile'dagi ranglar to'g'ri chiqishi uchun
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // Kartochka sarlavhasi (Oyat va uning raqami)
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Yuqoridagi oyat raqami
            Text(
              "Oyat ${ayah.numberInSurah}",
              style: AppTextStyles.caption.copyWith(
                color: colors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            // Asosiy arabcha matn
            Text(
              ayah.text,
              textAlign: TextAlign.right,
              style: AppTextStyles.amiriAyah.copyWith(
                  color: colors.onSurface
              ),
            ),
          ],
        ),
        // Ochilganda ko'rinadigan qism (tarjima va tugmalar)
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                // O'zbekcha tarjimasi
                Text(
                  ayah.translation ?? "Tarjima mavjud emas",
                  style: AppTextStyles.body.copyWith(
                    color: colors.onSurface.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 16),
                // Tugmalar qatori
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Keyingi bosqichlarda bookmark uchun ishlatamiz
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border_outlined),
                      color: colors.primary,
                    ),
                    const SizedBox(width: 8),
                    // Bu tugma keyingi bosqichda audio tinglash uchun ishlaydi
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.play_circle_outline),
                      iconSize: 32,
                      color: colors.primary,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}