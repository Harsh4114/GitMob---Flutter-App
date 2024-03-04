// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gitmob/User_pages/chat.dart';
import 'package:gitmob/User_pages/profile.dart';
import 'package:gitmob/User_pages/search.dart';
import 'package:gitmob/widgets/widgets.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              child: text("search"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
            InkWell(
              child: text("chat"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
            InkWell(
              child: text("home"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHome()));
              },
            ),
            InkWell(
              child: text("profile"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile_page()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
