import 'package:flutter/material.dart';
import 'package:group_118/view/screens/furniture/furniture_screen.dart';



void main () {
  runApp(const MyApp());
}

/// Make Some Edit in main

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FurnitureScreen(),
    );
  }
}