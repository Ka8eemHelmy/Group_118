import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../model/furniture.dart';
import 'components/furniture_widget.dart';

class FurnitureScreen extends StatelessWidget {
  FurnitureScreen({super.key});

  List<Furniture> furnitures = [
    Furniture(
      name: 'Bed',
      subTitle: 'King Size Bed',
      image:
      'https://i.pinimg.com/originals/41/af/35/41af35e07420f1c651b1465395915c6a.png',
      backgroundColor: Colors.blue,
    ),
    Furniture(
      name: 'Chair',
      subTitle: 'King Size Chair',
      image: 'https://picsum.photos/200/500',
      backgroundColor: Colors.greenAccent,
    ),
    Furniture(
      name: 'Sofa',
      subTitle: 'King Size Sofa',
      image: 'https://picsum.photos/200/900',
      backgroundColor: Colors.purpleAccent,
    ),
    Furniture(
      name: 'Dolab',
      subTitle: 'King Size Dolab',
      image: 'https://picsum.photos/200/940',
      backgroundColor: Colors.red,
    ),
    Furniture(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2, child: Column(
                    children: [
                      Text('Top Rated',),
                      Text('Buy\nFurniture',),
                    ],
                  ),),
                  SizedBox(width: 12,),
                  Expanded(child: Image.network('https://picsum.photos/200/300'),),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FurnitureWidget(furniture: furnitures[index],);
              },
              itemCount: furnitures.length,
            ),
          ],
        ),
      ),
    );
  }
}