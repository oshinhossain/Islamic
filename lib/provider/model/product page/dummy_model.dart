import 'package:flutter/material.dart';
import 'package:islamic/provider/model/product_model_class.dart';


class Dummy_Product with ChangeNotifier{
  List<Product> _items = [
    Product(
      id:'p1',
      image: 'images/chiffon.png',
      price: 200,
      category: 'Food',
      prePrice: 220,
      quantity: 1,
      quantityType: 'Kg',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Chiffon Pink Hijab',
    ),
    Product(
      id:'p2',
      image: 'images/cotton hijab.png',
      price: 200,
      category:"Halal Cosmetics & Fragrance",
      prePrice: 220,
      quantity: 0.5,
      quantityType: 'ml',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Printed Cotton Hijab',
    ),
    Product(
      id:'p3',
      image: 'images/multi hijab.png',
      price: 200,
      category: 'Islamic Item',
      prePrice: 220,
      quantity: 150,
      quantityType: 'ml',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Synthetic Multi Hijab',
    ),
    Product(
      id:'p4',
      image: 'images/cotton pink hijab.png',
      price: 200,
      prePrice: 220,
      category: 'Islamic Item',
      quantity: 1,
      quantityType: 'Kg',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Cotton Pink Hijab',
    ),
    Product(
        id:'p5',
        price: 200,
        image: 'images/chiffon.png',
        prePrice: 220,
        quantity: 1,
        quantityType: 'pieces',
        title: 'Chiffon Pink Hijab',
        detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
        category: 'Modest Dress'
    ),
    Product(
        id:'p6',
        price: 190,
        image: 'images/chiffon.png',
        prePrice: 220,
        quantity: 1,
        quantityType: 'pieces',
        title: 'Printed Cotton Hijab',
        detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
        category: 'Modest Dress'
    ),
  ];
  List<Product> get items {
    return [..._items];
  }
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
