// ignore_for_file: unused_local_variable, avoid_print, prefer_const_constructors, unused_catch_clause, use_build_context_synchronously, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gitmob/Login/loading.dart';
import 'package:lottie/lottie.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  loginfun(String email, String password) async {
    if (emailcontroller.text.isEmpty && passwordcontroller.text.isEmpty) {
      setState(() {
        // Show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter both email and password.'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
          ),
        );
      });
    } else {
      UserCredential? userCredential;
      try {
        userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => loading())));
      } on FirebaseAuthException catch (ex) {
        setState(() {
          // Show an error message using SnackBar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Not Found: Please Enter Correct Data"),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.red, // Set the behavior to floating
            ),
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: false,
        child: ListView(
          padding: EdgeInsets.all(40),
          children: [
            const SizedBox(
              height: 40,
            ),
            Lottie.asset("assets/mp4/newuser.json", height: 150),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(fontSize: 15, color: Colors.blue[400]),
                )
              ],
            ),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: " Email ",
                prefixStyle: const TextStyle(color: Colors.black, fontSize: 15),
                labelStyle: const TextStyle(color: Colors.black),
                prefixIcon: const Icon(Icons.mail),
                prefixIconColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.blue[200],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(fontSize: 15, color: Colors.blue[400]),
                )
              ],
            ),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: " Password",
                // prefixText: "Password : ",
                prefixStyle: const TextStyle(color: Colors.black, fontSize: 15),
                labelStyle: const TextStyle(color: Colors.black),
                prefixIcon: const Icon(Icons.password),
                prefixIconColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.blue[200],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                loginfun(emailcontroller.text.toString(),
                    passwordcontroller.text.toString());
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    color: Colors.blue), // Border color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Rounded corners for the button
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 100), // Padding around the button text
              ),
              child: Center(
                child: const Text(
                  'Sign-in',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue), // Text style for the button text
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
