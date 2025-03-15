import 'dart:async';
import 'package:flutter/material.dart';
import 'package:petapp/signup.dart';

// Splash screen widget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Set a timer for 3 seconds to navigate to the signup screen
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => signup()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content
          children: [
            // Display the pet image
            Image.asset(
              'images/pet.png',
              width: 400,
              height: 400,
            ),
            SizedBox(height: 60), // Space between image and text
            // Display the app title
            Text(
              "Paw",
              style: TextStyle(
                  fontSize: 80, // Title font size
                  fontWeight: FontWeight.bold, // Title font weight
                  color: Colors.purple[900], // Title font color
                  fontFamily: 'Courgette' // Title font family
              ),
            ),
          ],
        ),
      ),
    );
  }
}
