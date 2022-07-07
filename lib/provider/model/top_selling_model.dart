import 'package:flutter/material.dart';

class TrendingSelling_Model with ChangeNotifier {
  final String name;
  final String image;
  final int price;

  TrendingSelling_Model(
      {
        required this.name,
        required this.image,
        required this.price,

      });
}