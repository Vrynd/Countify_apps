import 'package:countify/screens/splash_screen.dart';
import 'package:flutter/material.dart';


class CountifyApp extends StatelessWidget {
  const CountifyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countify',
      theme: ThemeData(
        fontFamily: 'Sora',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF121212),
        useSystemColors: true,
        useMaterial3: true
      ),
      home: const SplashScreen(),
    );
  }
}

void main() => runApp(const CountifyApp());

