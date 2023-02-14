import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext) => Onboarding()))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff0F68ED).withOpacity(0.75),
            Color(0xff1DB0A8)
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('images/logo.png')),
          Container(
            height: 33,
            width: 54,
            color: Color(0xff20ABAF),
            child: Image(image: AssetImage('images/Inc..png')),
          )
        ],
      ),
    );
  }
}
