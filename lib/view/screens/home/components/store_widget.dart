import 'package:flutter/material.dart';
import '../../../../model/store.dart';

class StoreWidget extends StatelessWidget {
  final Store store;
  const StoreWidget({required this.store, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: store.backgroundColor ?? Colors.grey[350],
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Image.network(
            store.icon ?? 'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/apple-icon.png',
            width: 48,
            height: 48,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      store.name ?? '',
                    ),
                  ),
                  Text(
                    '-\$${store.amount ?? 0}',
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      store.date ?? '',
                    ),
                  ),
                  Text(
                    store.type ?? '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
