import 'package:flutter/material.dart';
import 'package:islamic/provider/model/product_model_class.dart';


class Dummy_Product1 with ChangeNotifier{
  List<Product> _items1 = [
    Product(
      id:'p1',
      image: 'assets/image 153.png',
      price: 200,
      category: 'Food',
      prePrice: 220,
      quantity: 10,
      quantityType: 'Sold:',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Blue Janamaz',
    ),
    Product(
      id:'p2',
      image: 'assets/image 193.png',
      price: 200,
      category:"Halal Cosmetics & Fragrance",
      prePrice: 220,
      quantity: 12,
      quantityType: 'Sold:',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Kishmish',
    ),
    Product(
      id:'p3',
      image: 'assets/613nPfcds1S 1.png',
      price: 200,
      category: 'Islamic Item',
      prePrice: 220,
      quantity: 17,
      quantityType: 'Sold:',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Quran Rehal',
    ),
    Product(
      id:'p4',
      image: 'assets/download 1.png',
      price: 200,
      prePrice: 220,
      category: 'Islamic Item',
      quantity: 14,
      quantityType: 'Sold:',
      detail: 'piscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Meshwak',
    ),

  ];
  List<Product> get items1 {
    return [..._items1];
  }
  Product findById(String id) {
    return _items1.firstWhere((prod) => prod.id == id);
  }
}