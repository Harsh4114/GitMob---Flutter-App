// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class checkerpage extends StatefulWidget {
  const checkerpage({super.key});

  @override
  State<checkerpage> createState() => _checkerpageState();
}

class _checkerpageState extends State<checkerpage> {

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}