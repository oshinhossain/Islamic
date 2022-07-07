import 'package:flutter/material.dart';
import 'package:islamic/provider/model/product_model_class.dart';

class Dummy_Product2 with ChangeNotifier{
  List<Product> _items2 = [
    Product(
      id:'p1',
      image: 'assets/image 148.png',
      price: 200,
      category: 'Food',
      prePrice: 220,
      quantity: 1,
      quantityType: 'Kg',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Lucy Olive Oil',
    ),
    Product(
      id:'p2',
      image: 'assets/image 146 (1).png',
      price: 200,
      category:"Halal Cosmetics & Fragrance",
      prePrice: 220,
      quantity: 0.5,
      quantityType: 'ml',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Blue Stone Tasbi',
    ),

    Product(
        id:'p5',
        price: 200,
        image: 'assets/image 146 (1).png',
        prePrice: 220,
        quantity: 1,
        quantityType: 'pieces',
        title: 'Khemar',
        detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
        category: 'Modest Dress'
    ),
  ];
  List<Product> get items2 {
    return [..._items2];
  }
  Product findById(String id) {
    return _items2.firstWhere((prod) => prod.id == id);
  }
}