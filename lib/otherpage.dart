import 'dart:ui';
import 'package:portplio/sqlite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:video_player/video_player.dart';
import 'package:css_colors/css_colors.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '포트폴리오',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: OtherPage(),
    );
  }
}

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  late VideoPlayerController _videoPlayerController;
  bool _isVideoPlaying = false;
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/video/seavideo.mp4')
      ..initialize().then((_) {
        setState(() {
          _isVideoPlaying = true;
        });
      });
    _assetsAudioPlayer.open(
      Audio('assets/bgm.mp3'),
      autoStart: false,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _assetsAudioPlayer.dispose();
  }

  void _toggleVideoPlayback() {
    setState(() {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
      } else {
        _videoPlayerController.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('etc..'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: CSSColors.beige,
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            _isVideoPlaying
                ? InkWell(
              onTap: _toggleVideoPlayback,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayer(_videoPlayerController),
              ),
            )
                : Text(
              '파도영상',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '영상 클릭하면 재생 / 일시정지',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, height: 1, color: Colors.lightGreen),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              label: Text("MEMO", style: TextStyle(fontSize: 30)),
              icon: Icon(UniconsLine.file_edit_alt),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, height: 1, color: Colors.lightGreen),
            SizedBox(height: 20),
            Text(
              '오디오',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _assetsAudioPlayer.play();
                  },
                  icon: Icon(Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () {
                    _assetsAudioPlayer.pause();
                  },
                  icon: Icon(Icons.pause),
                ),
                IconButton(
                  onPressed: () {
                    _assetsAudioPlayer.stop();
                  },
                  icon: Icon(Icons.stop),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}