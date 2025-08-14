import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:countify/screens/home_screen.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splash: SlideInUp(
        duration: const Duration(seconds: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset("images/logo.png")),
            Expanded(
              child: Text(
                "Countify",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      nextScreen: HomeScreen(),
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color(0xFF1976D2),
    );
  }
}
