import 'dart:ui';

import 'package:portplio/profilepage.dart';
import 'package:portplio/educationpage.dart';
import 'package:portplio/skillpage.dart';
import 'package:portplio/hobbypage.dart';
import 'package:portplio/favoritepage.dart';
import 'package:portplio/otherpage.dart';

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '포트폴리오',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
            '⭐ Portfolio ⭐',
            style: TextStyle(fontSize: 35,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EducationPage(),
                          ),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SkillPage(),
                          ),
                        );
                        break;
                      case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HobbyPage(),
                          ),
                        );
                        break;
                      case 4:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoritePage(),
                          ),
                        );
                        break;
                      case 5:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtherPage(),
                          ),
                        );
                        break;
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        getTitle(index),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          SliderButton(
            action: () {
              ///Do something here
              Navigator.of(context).pop();
            },
            label: Text(
              "Slide to Exit",
              style: TextStyle(
                color: Color(0xff4a4a4a),
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
            icon: Icon(UniconsLine.android_phone_slash),
            baseColor: Colors.white60,
            backgroundColor: Colors.lightGreen,
            buttonColor: Colors.lightGreen.shade200,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Profile';
      case 1:
        return 'Education';
      case 2:
        return 'Skill';
      case 3:
        return 'Hobby';
      case 4:
        return 'Favotite';
      case 5:
        return 'Etc..';
      default:
        return '';
    }
  }
}