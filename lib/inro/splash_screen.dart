import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_projects/create_home.dart';
import 'package:splash_projects/pages/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        // mainAxisSize: MainAxisSize.min, // Prevent overflow issues
        children: [
          Lottie.asset(
            'assets/animations/Animation - 1742138030378.json',
            width: 200, // Adjust size if necessary
            height: 220,
          ),
           SizedBox(height: 4,),
          const Text("Welcome",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87,),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      centered: true,
      splashIconSize: 250, // Adjusted to fit both animation & text
      duration: 3000,
      backgroundColor: Colors.blue.shade100,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: CreateHome(),
    );
  }
}
