import 'package:flutter/material.dart';

class CatagoryModel with ChangeNotifier {
  final String name;
  final String image;
  final int price;
  final double quantity;
  final String quantityType;
  bool? isFavorite;
  CatagoryModel(
      {
        required this.name,
        required this.image,
        required this.price,
        required this.quantity,
        required this.quantityType,
        this.isFavorite
      });
}