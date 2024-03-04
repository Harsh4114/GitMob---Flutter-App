
import 'package:flutter/material.dart';
import 'package:gitmob/User_pages/chat.dart';
import 'package:gitmob/User_pages/profile.dart';
import 'package:gitmob/User_pages/search.dart';
import 'package:gitmob/pages/home.dart';

// ending off all import file
// nav bar
Widget navbar(BuildContext context) {
  return Positioned(
    left: 6,
    right: 6,
    bottom: 10,
    child: Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: const Color.fromRGBO(217, 217, 217, 5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            child: Image.asset("assets/photo/Home.png"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHome()),
              );
            },
          ),
          InkWell(
            child: const Icon(Icons.chat),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
          ),
          InkWell(
            child: const Icon(
              Icons.add_box_rounded,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => post()),
              );
            },
          ),
          InkWell(
            child: Image.asset("assets/photo/smileface.png"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => post()),
              );
            },
          ),
          InkWell(
            child: Image.asset("assets/photo/person.png"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const profile_page()),
              );
            },
          ),
        ],
      ),
    ),
  );
}
// here ending of nav bar

// top bar

Widget topbar(BuildContext context) {
  return Positioned(
    left: 10,
    right: 10,
    top: 10,
    child: Container(
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromRGBO(217, 217, 217, 5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            child: Image.asset("assets/photo/star2.png"),
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            child: Image.asset("assets/photo/searchbutton.png"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    ),
  );
}

// here ending of top bar class

// recent post

Widget post() {
  return SizedBox(
    height: 670,
    child: ListView.builder(
      itemCount: 10, // Number of items in the list
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue[100],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 15,
                      ),
                      Text("#Harsh_4114")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 210,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color.fromRGBO(65, 65, 65, 100),
                    ),
                    child: const Center(
                      child: Text(
                        "Code",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.save_alt,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

// ending of recent post class

Widget text(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 20, color: Colors.blue),
  );
}
