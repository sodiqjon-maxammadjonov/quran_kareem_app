import 'package:just_audio/just_audio.dart';

// Pleyer holatlarini ifodalovchi enum
enum PlayerStatus { stopped, playing, paused, completed }

class AudioPlayerService {
  final AudioPlayer _audioPlayer = AudioPlayer();

  AudioPlayer get audioPlayer => _audioPlayer;

  // Asosiy amallar
  Future<void> play(String url) async {
    await stop(); // Yangi audio ijro etishdan oldin avvalgisini to'xtatamiz
    try {
      await _audioPlayer.setUrl(url);
      _audioPlayer.play();
    } catch (e) {
      // Xatoliklarni boshqarish
      print("Audio tinglashda xatolik: $e");
    }
  }

  Future<void> pause() async => await _audioPlayer.pause();
  Future<void> resume() async => await _audioPlayer.play();
  Future<void> stop() async => await _audioPlayer.stop();
  Future<void> seek(Duration position) async => await _audioPlayer.seek(position);

  // Tezlikni boshqarish
  Future<void> setSpeed(double speed) async {
    await _audioPlayer.setSpeed(speed);
  }

  // Audio holati oqimlari (streams)
  Stream<PlayerState> get playerStateStream => _audioPlayer.playerStateStream;
  Stream<Duration> get positionStream => _audioPlayer.positionStream;
  Stream<Duration?> get durationStream => _audioPlayer.durationStream;
  Stream<Duration> get bufferedPositionStream => _audioPlayer.bufferedPositionStream;

  void dispose() {
    _audioPlayer.dispose();
  }
}