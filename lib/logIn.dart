import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/pageTwo.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //   height: 200,
              //   width: double.maxFinite,
              //   child: ClipRRect(
              //     borderRadius:
              //         BorderRadius.circular(20.0), // Set the border radius
              //     child: Image.network(
              //       'https://i.pinimg.com/736x/03/e1/5f/03e15f3c644d13ac3d2715c2f7ca736a.jpg',
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),

              SizedBox(height: 40),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 20),

              // Password Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),

              SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  Get.off(PageTwo());
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Full width button
                  backgroundColor: Colors.blue, // Button color
                ),
                child: Text('Login', style: TextStyle(fontSize: 18,color: Colors.white)),
              ),

              SizedBox(height: 20),

              // Forgot Password
              TextButton(
                onPressed: () {
                  // Add action here for forgot password
                },
                child: Text('Forgot Password?',
                    style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
