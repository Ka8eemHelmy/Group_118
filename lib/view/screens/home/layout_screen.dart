import 'package:flutter/material.dart';
import 'package:group_118/view/screens/home/bookmark_screen.dart';
import 'package:group_118/view/screens/home/profile_screen.dart';
import 'package:group_118/view/screens/home/shop_screen.dart';

import 'home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  static const List<Widget> screens = [
    HomeScreen(),
    ShopScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentScreenIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutScreen.screens[currentScreenIndex],
      bottomNavigationBar: Builder(
        builder: (context) => BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: currentScreenIndex,
          onTap: (int index){
            setState(() {
              currentScreenIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_rounded,
              ),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
