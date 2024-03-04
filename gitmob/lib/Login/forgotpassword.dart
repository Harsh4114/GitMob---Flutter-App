// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gitmob/Login/2screen.dart';

class passwordchange extends StatefulWidget {
  const passwordchange({super.key});

  @override
  State<passwordchange> createState() => _passwordchangeState();
}

class _passwordchangeState extends State<passwordchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        child: Center(
            child: Text(
          " Click Me",
          style: TextStyle(fontSize: 26),
        )),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => log_sign()));
        },
      ),
    );
  }
}
