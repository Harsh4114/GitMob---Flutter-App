// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gitmob/pages/home.dart';
import 'package:lottie/lottie.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 2 seconds before navigating to the home screen
    Timer(
      const Duration(milliseconds: 2000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHome(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Lottie.asset("assets/mp4/loading.json"),
      ),
    );
  }
}
