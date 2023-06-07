import 'package:portplio/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      home: HobbyPage(),
    );
  }
}

class HobbyPage extends StatelessWidget {
  const HobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter App', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List imageList = [
    'assets/images/earphone.jpg',
    'assets/images/knitting.jpg',
    'assets/images/puzzle.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobby'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DashboardPage()
              ),
            );
          },
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.6,
            child: Stack(
              children: [
                sliderWidget(),
                sliderIndicator(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "📝List",
              style: TextStyle(fontSize: 25),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3, // 취미 목록의 개수
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  index == 0 ? "음악듣기" : index == 1 ? "퍼즐" : "뜨개질",
                  style: TextStyle(fontSize: 20, backgroundColor: Colors.orange.shade100),
                ),
              );
            },
          ),
        ],
        shrinkWrap: true,
      ),
    );
  }
  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: imageList.map(
            (imgLink) {
          return Builder(builder: (context){
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                imgLink,
                fit: BoxFit.contain,
              ),
            );
          },
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.6,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12,
              height: 12,
              margin:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}