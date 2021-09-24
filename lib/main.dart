import 'package:challenge/custom_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF261C2C),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'protiaa',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 56,
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                  ),
                ),
                Image.asset(
                  'image/circle.png',
                  height: 64,
                  width: 64,
                  scale: 8,
                  filterQuality: FilterQuality.high,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 65,
              width: 430,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.search, color: Colors.white70, size: 40),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'search....',
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: Colors.white30),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.white30),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 50,
            ),
            Cards("image/dribble.png", "dribble", "rajiv", "124 Shots",
                Colors.pink, Colors.orange.shade300),
            SizedBox(
              height: 50,
            ),
            Cards("image/behance.png", "behance", "zaif", "125 post",
                Colors.blue, Colors.lightBlue.shade100),
          ],
        ),
      ),
    );
  }

  Widget Cards(String icon, String heading, String name, String shot,
      Color start, Color end) {
    return Container(
      height: 290,
      width: 430,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: start.withOpacity(0.3),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(4, 4))
        ],
        gradient: LinearGradient(
            colors: [start, end],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            icon,
            height: 128,
            width: 128,
          ),
          Text(
            heading,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 50,
                letterSpacing: 2,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 15,
                letterSpacing: 2,
                color: Colors.white60,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white24),
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shot,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54,
                    ),
                  ),
                  Text('add new',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
