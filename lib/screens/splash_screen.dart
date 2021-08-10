import 'package:flutter/material.dart';
import 'dart:async';

import 'sign_in_page.dart';
class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SignInPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C5C8D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello!",
              style: TextStyle(
                  color: Color(0xFFFFFFFFF),
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Norwester'),
            ),
            Text(
              "Welcome to my app",
              style: TextStyle(
                  color: Color(0xFFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Kollektif-I'),
            )
          ],
        ),
      ),
    );
  }
}