import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';
import '../../core/constants/app_text_stylrs.dart';
import '../providers/audio_player_provider.dart';

class AyahCardWidget extends ConsumerWidget {
  final AyahEntity ayah;

  const AyahCardWidget({super.key, required this.ayah});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                Text(
                  ayah.translation ?? "Tarjima mavjud emas",
                  style: AppTextStyles.body.copyWith(
                    color: colors.onSurface.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border_outlined),
                      color: colors.primary,
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: () {
                        final audioService = ref.read(audioPlayerServiceProvider);
                        ref.read(currentAyahProvider.notifier).state = ayah;
                        audioService.play(ayah.audioUrl!);
                      },
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