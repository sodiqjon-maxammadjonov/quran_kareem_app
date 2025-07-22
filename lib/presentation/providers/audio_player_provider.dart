import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran_kareem/core/services/audio_player_service.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';

final audioPlayerServiceProvider = Provider<AudioPlayerService>((ref) {
  final service = AudioPlayerService();
  ref.onDispose(() => service.dispose());
  return service;
});


final currentAyahProvider = StateProvider<AyahEntity?>((ref) => null);


final playerStatusProvider = StateNotifierProvider<PlayerStatusNotifier, PlayerStatus>((ref) {
  final audioService = ref.watch(audioPlayerServiceProvider);
  return PlayerStatusNotifier(audioService.playerStateStream);
});

class PlayerStatusNotifier extends StateNotifier<PlayerStatus> {
  late final StreamSubscription _subscription;

  PlayerStatusNotifier(Stream<PlayerState> playerStateStream) : super(PlayerStatus.stopped) {
    _subscription = playerStateStream.listen((playerState) {
      if (!playerState.playing) {
        if(playerState.processingState == ProcessingState.completed){
          state = PlayerStatus.completed;
        } else {
          state = PlayerStatus.paused;
        }
      } else {
        state = PlayerStatus.playing;
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}