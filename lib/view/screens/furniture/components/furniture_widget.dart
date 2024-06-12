import 'package:flutter/material.dart';
import 'package:group_118/model/furniture.dart';

class FurnitureWidget extends StatelessWidget {
  final Furniture furniture;

  const FurnitureWidget({required this.furniture, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: furniture.backgroundColor ?? Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              furniture.image ?? '',
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error_outline_rounded, color: Colors.red,);
              },
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  furniture.name ?? 'No Name',
                ),
                Text(
                  furniture.subTitle ?? 'No Sub Title',
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
    );
  }
}
