import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    playMusic();
  }

  void playMusic() async {
    int result = await audioPlayer.play(
        'assetsonlymp3.to - Duggy Happiness In The Sky-zLVockthFuk-192k-1698835451.mp3',
        isLocal: true);
    if (result == 1) {
      // 재생 성공
    } else {
      // 재생 실패
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('음악 플레이어'),
      ),
      body: const Center(
        child: Text('음악을 재생하고 있습니다.'),
      ),
    );
  }
}
