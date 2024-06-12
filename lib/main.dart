import 'package:flutter/material.dart';
import 'package:group_118/view/screens/auth/login_screen.dart';
import 'package:group_118/view/screens/furniture/furniture_screen.dart';
import 'package:group_118/view/screens/home/layout_screen.dart';
import 'package:group_118/view/screens/instagram/instagram_screen.dart';
import 'package:group_118/view/screens/stateful_screen.dart';
import 'package:group_118/view/screens/tab_bar/tab_bar_screen.dart';

import 'view/screens/grid/grid_screen.dart';


void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FurnitureScreen(),
    );
  }
}
