// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors, avoid_print, use_build_context_synchronously, unused_catch_clause, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gitmob/Login/forgotpassword.dart';
import 'package:gitmob/Login/loading.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isChecked = false;
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
            .signInWithEmailAndPassword(email: email, password: password)
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
          padding: const EdgeInsets.all(40),
          children: [
            const SizedBox(
              height: 40,
            ),
            Lottie.asset("assets/mp4/sigin.json", height: 150), // animation
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
              obscureText: true,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: const Text(
                    " Forgot Password ?",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const passwordchange()));
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _isChecked = newValue;
                      });
                    }
                  },
                  fillColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.blue; // Color when checkbox is checked
                    }
                    return Colors.white; // Color when checkbox is unchecked
                  }),
                ),
                const Text("Remember Me")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () async {
                // Save login status to SQLite database
                loginfun(emailcontroller.text.toString(),
                    passwordcontroller.text.toString());
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 100),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16, color: Colors.blue),
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
