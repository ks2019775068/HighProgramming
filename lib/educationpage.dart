import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
      home: EducationPage(),
    );
  }
}

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () async {
                    final uri = Uri.tryParse('https://kscms.ks.ac.kr/kor/Main.do');
                    if (uri != null) {
                      launchUrl(uri);
                    }
                  },
                  child: Text(
                    "Kyungsung Univ",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  ),
                ),
                SizedBox(width: 10,),
                Text("2019.03.~  / 소프트웨어학과", style: TextStyle(fontSize: 20)),
              ],
            ),

            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.9, // 에뮬레이터 너비의 80%로 설정
              height: MediaQuery.of(context).size.height * 0.75, // 원하는 높이로 설정
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(35.138875388436375, 129.097380470068),
                  zoom: 16,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId('kyungsung_univ'),
                    position: LatLng(35.138875388436375, 129.097380470068),
                    infoWindow: InfoWindow(
                      title: 'Kyungsung University',
                      snippet: 'Busan, South Korea',
                    ),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}