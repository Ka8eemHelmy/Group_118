import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_118/view/screens/auth/login_screen.dart';
import 'package:group_118/view/screens/furniture/furniture_screen.dart';
import 'package:group_118/view/screens/home/home_screen.dart';
import 'package:group_118/view/screens/instagram/instagram_screen.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 8,
          initialIndex: 2,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.grid_on),
                    text: 'Furniture',
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Instagram',
                  ),
                  Tab(
                    icon: Icon(Icons.login),
                    text: 'Login',
                  ),
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.grid_on),
                    text: 'Furniture',
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Instagram',
                  ),
                  Tab(
                    icon: Icon(Icons.login),
                    text: 'Login',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    HomeScreen(),
                    FurnitureScreen(),
                    InstagramScreen(),
                    LoginScreen(),
                    HomeScreen(),
                    FurnitureScreen(),
                    InstagramScreen(),
                    LoginScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
