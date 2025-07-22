import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/core/services/audio_player_service.dart';

import '../../core/constants/app_text_stylrs.dart';
import '../providers/audio_player_provider.dart';

class BottomPlayerBar extends ConsumerWidget {
  const BottomPlayerBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final currentAyah = ref.watch(currentAyahProvider);
    final playerStatus = ref.watch(playerStatusProvider);
    final audioService = ref.watch(audioPlayerServiceProvider);

    if (currentAyah == null || playerStatus == PlayerStatus.stopped) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: colors.surface,
          boxShadow: [
            BoxShadow(
              color: colors.primary.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              // Oyat ma'lumoti
              Expanded(
                child: Text(
                  "Oyat ${currentAyah.numberInSurah}",
                  style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colors.primary
                  ),
                ),
              ),
              // Pleyer tugmalari
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_previous)),
              IconButton(
                iconSize: 40,
                onPressed: () {
                  if (playerStatus == PlayerStatus.playing) {
                    audioService.pause();
                  } else {
                    audioService.resume();
                  }
                },
                icon: Icon(
                  playerStatus == PlayerStatus.playing
                      ? Icons.pause_circle_filled_rounded
                      : Icons.play_circle_fill_rounded,
                  color: colors.primary,
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next)),
            ],
          ),
          const SizedBox(height: 8),
          // Progress bar
          StreamBuilder<Duration>(
            stream: audioService.positionStream,
            builder: (context, snapshot) {
              final position = snapshot.data ?? Duration.zero;
              return StreamBuilder<Duration?>(
                stream: audioService.durationStream,
                builder: (context, snapshot) {
                  final duration = snapshot.data ?? Duration.zero;
                  return Slider(
                    value: position.inMilliseconds.toDouble(),
                    max: duration.inMilliseconds.toDouble(),
                    onChanged: (value) {
                      audioService.seek(Duration(milliseconds: value.toInt()));
                    },
                    activeColor: colors.primary,
                    inactiveColor: colors.primary.withOpacity(0.3),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}