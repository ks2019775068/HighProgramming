import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      home: SkillPage(),
    );
  }
}

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skill'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              onPressed: () async {
                final uri = Uri.tryParse('https://flutter.dev/');
                if (uri != null) {
                  launchUrl(uri);
                }
              },
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 40),

              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () async {
                final uri = Uri.tryParse('https://ko.wikipedia.org/wiki/HTML');
                if (uri != null) {
                  launchUrl(uri);
                }
              },
              child: Text(
                "HTML",
                style: TextStyle(fontSize: 40),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final uri = Uri.tryParse('https://ko.wikipedia.org/wiki/CSS');
                if (uri != null) {
                  launchUrl(uri);
                }
              },
              child: Text(
                "CSS",
                style: TextStyle(fontSize: 40),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () async {
                final uri = Uri.tryParse('https://developer.mozilla.org/ko/docs/Web/JavaScript');
                if (uri != null) {
                  launchUrl(uri);
                }
              },
              child: Text(
                "Javascript",
                style: TextStyle(fontSize: 40),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final uri = Uri.tryParse('https://www.adobe.com/kr/products/photoshop.html');
                if (uri != null) {
                  launchUrl(uri);
                }
              },
              child: Text(
                "Photoshop",
                style: TextStyle(fontSize: 40),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () async {
                final uri = Uri.tryParse('https://www.adobe.com/kr/products/illustrator.html');
                if (uri != null) {
                  launchUrl(uri);
                }
              },
              child: Text(
                "Illustration",
                style: TextStyle(fontSize: 40),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 70)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}