import 'package:flutter/material.dart';
import 'package:group_118/model/store.dart';
import 'components/store_widget.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  static List<Store> stores = [
    Store(
      name: 'Dribble',
      amount: 12700,
      type: 'Credit',
      backgroundColor: Colors.pink.withOpacity(0.2),
      icon:
      'https://static.vecteezy.com/system/resources/previews/023/986/617/original/dribbble-logo-dribbble-logo-transparent-dribbble-icon-transparent-free-free-png.png',
      date: '30-8-2027',
    ),
    Store(
      name: 'Apple Store',
      amount: 2200,
      type: 'Debit',
      backgroundColor: Colors.grey[350],
      icon:
          'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/apple-icon.png',
      date: '29-5-2024',
    ),
    Store(
      name: 'Netflix',
      amount: 1200,
      type: 'Debit',
      backgroundColor: Colors.red.withOpacity(0.2),
      icon:
          'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
      date: '30-5-2024',
    ),
    Store(
      name: 'Sptify',
      amount: 1200,
      type: 'Debit',
      backgroundColor: Colors.green.withOpacity(0.2),
      icon:
      'https://static.vecteezy.com/system/resources/previews/018/930/693/original/spotify-app-logo-spotify-icon-transparent-free-png.png',
      date: '30-5-2024',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemBuilder: (context, index) {
            return StoreWidget(
              store: stores[index],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 12,
            );
          },
          itemCount: stores.length,
        ),
      ),
    );
  }
}
