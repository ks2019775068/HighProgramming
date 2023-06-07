import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

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
      home: FavoritePage(),
    );
  }
}

class FavoritePage extends StatelessWidget {
  void showAlert(BuildContext context, String message) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) => BasicDialogAlert(
        title: Text("좋아하는 것"),
        content: Text(message),
        actions: <Widget>[
          BasicDialogAction(
            title: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showAlert(context, '바다를 좋아합니다.');
            },
            child: Image.asset('assets/images/sea.jpg'),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showAlert(context, '하늘보면서 멍때리는 것을 좋아합니다.');
            },
            child: Image.asset('assets/images/sky.jpg'),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showAlert(context, '집에서 노는 것을 좋아합니다.');
            },
            child: Image.asset('assets/images/house.jpg'),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showAlert(context, '동물을 좋아합니다.');
            },
            child: Image.asset('assets/images/dog.jpg'),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showAlert(context, '영화 보는 것을 좋아합니다.');
            },
            child: Image.asset('assets/images/movie.jpg'),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}