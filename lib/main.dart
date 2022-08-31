import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homescreen/mainscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splashscreen(),
        'home': (context) => Mainscreen(),
      },
    ),
  );
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double i = 0;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    Timer.periodic(Duration(milliseconds: 300), (timer) {
      if (i < 100) {
        setState(() {
          i++;
        });
      }
    });
    return SafeArea(child: Scaffold(backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        elevation: 00,
        title: Text(
          'Whatsapp',
          style: TextStyle(color: Color(0xff000000)),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/splash.png'),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              color: Color(0xff3eccff),
              backgroundColor: Color(0xff3f3f3f),
              value: i / 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Loading $i%",
              style: TextStyle(color: Color(0xc2030303), fontSize: 16),
            ),
          ],
        ),
      ),));
  }
}
