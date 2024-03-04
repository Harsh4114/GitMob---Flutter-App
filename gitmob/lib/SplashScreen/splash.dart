// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gitmob/Login/2screen.dart';
// import '../Login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 2 seconds before navigating to the home screen
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => log_sign(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 250,
          width: 250,
          child: Image.asset("assets/photo/gitmob_logo.png"),
        ),
      ),
    );
  }
}
