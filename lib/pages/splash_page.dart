import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gajahmungkur/theme.dart';
import 'package:gajahmungkur/main.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  void initState() {
    Timer(Duration(seconds: 3),() => Navigator.pushNamed(context, '/first-page'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primarybackground,
        body: Center(
          child: Container(
            width: 260,
            height: 268,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
