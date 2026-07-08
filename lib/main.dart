import 'package:flutter/material.dart';
import 'package:store/features/Home_nav/homenav.dart';
import 'package:store/features/splah/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}