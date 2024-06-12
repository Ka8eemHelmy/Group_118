import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 5,
          childAspectRatio: 18 / 30,
          mainAxisSpacing: 5,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(12),
          children: List.generate(
            10,
            (index) => Image.network(
              'https://picsum.photos/200/${index}00',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
