import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unicons/unicons.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '포트폴리오',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(
                  color: Colors.deepOrange,
                  width: 5.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/profile_picture.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '하수빈 (Ha Subin)', // 자신의 이름으로 변경해주세요.
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Busan, North Korea', // 사는 곳
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
              childAspectRatio: 2.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    final url = Uri(
                      scheme: 'mailto',
                      path: 'ssub0304@gmail.com',
                      query: 'subject=Hello&body=Test',
                    );
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      print("Can't launch $url");
                    }
                  },
                  icon: Icon(UniconsLine.envelope),
                  label: Text("Email"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(90, 30)),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    final url = Uri.parse('tel:01012345678');
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      print("Can't launch $url");
                    }
                  },
                  icon: Icon(UniconsLine.phone),
                  label: Text("Tel"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(90, 30)),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    final url = Uri.parse(
                      'https://github.com/ks2019775068',
                    );
                    if (await canLaunch(url.toString())) {
                      await launch(url.toString());
                    } else {
                      print("Can't launch $url");
                    }
                  },
                  icon: Icon(UniconsLine.github),
                  label: Text("GitHub"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(90, 30)),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: '경성대학교에 재학중!',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black54,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                  icon: Icon(UniconsLine.comment),
                  label: Text("Show Toast"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(90, 30)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
