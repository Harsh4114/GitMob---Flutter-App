// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gitmob/Login/login.dart';
import 'package:gitmob/Login/sigin.dart';

class log_sign extends StatefulWidget {
  const log_sign({super.key});

  @override
  State<log_sign> createState() => _log_signState();
}

class _log_signState extends State<log_sign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 12,
              child: Scaffold(
                body: Column(
                  children: [
                    TabBar(
                      tabs: [
                        SizedBox(
                          height: 60,
                          // color: Colors.transparent,
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              "Signin",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                      labelColor: Colors.blue,
                      indicatorColor:
                          Colors.blue, // Set indicator color to transparent
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Loginpage(),
                          Signin(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
