import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/pageOne.dart';
import 'package:untitled1/pageTwo.dart';

import 'logIn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(LoginScreen());
                },
                child: const Text("Log in"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text("Page Three"),
              ),
            ),
          ], // ✅ Closing bracket for children list
        ),
      ),
    );
  }
}
