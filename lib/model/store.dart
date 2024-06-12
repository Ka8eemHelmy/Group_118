import 'package:flutter/material.dart';

class Store {
  num? amount;
  String? name;
  String? type;
  String? date;
  String? icon;
  Color? backgroundColor;

  Store({this.name, this.amount, this.type, this.backgroundColor, this.icon, this.date});
}