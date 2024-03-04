
import 'package:flutter/material.dart';
import 'package:gitmob/widgets/widgets.dart';
import 'package:lottie/lottie.dart';

// ignore: camel_case_types
class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

// ignore: camel_case_types
class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 100),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0))),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 150,
                  child: Container(
                    width: double.maxFinite,
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 50,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45.0),
                      child: Image.asset(
                        "assets/photo/male.jpg",
                        fit: BoxFit.cover,
                        height: 192,
                        width: 192, // Adjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color.fromRGBO(120, 187, 214, 100),
                    ),
                    child: const Center(
                      child: Text(
                        "#Harsh_4114",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color.fromRGBO(120, 187, 214, 100),
                    ),
                    child: const Center(
                      child: Text("Post : 10"),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color.fromRGBO(120, 187, 214, 100),
                    ),
                    child: const Center(
                      child: Text("Follwer : 100"),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color.fromRGBO(120, 187, 214, 100),
                    ),
                    child: const Center(
                      child: Text("Following : 10"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 318,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.black),
                    color: Colors.transparent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Lottie.asset(
                      "assets/mp4/car2.json",
                    ),
                    Lottie.asset(
                      "assets/mp4/sim.json",
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 318,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color.fromRGBO(120, 187, 214, 100),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/photo/76.png",
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
        navbar(context),
      ]),
    );
  }
}
