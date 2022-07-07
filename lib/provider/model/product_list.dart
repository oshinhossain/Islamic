import 'package:flutter/material.dart';
import 'package:islamic/provider/model/product_model_class.dart';

class Dummy_item with ChangeNotifier{
  List<Product> _items1 = [
    Product(
      id:'p1',
      image: 'assets/image 148.png',
      price: 200,
      category: 'Food',
      prePrice: 220,
      quantity: 1,
      quantityType: 'Kg',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Lucy Oliva Olive Oil',
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
      id:'p3',
      image: 'assets/image 147.png',
      price: 200,
      category: 'Islamic Item',
      prePrice: 220,
      quantity: 150,
      quantityType: 'ml',
      detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Green & White Janamaz',
    ),
    Product(
      id:'p4',
      image: 'assets/image 138.png',
      price: 200,
      prePrice: 220,
      category: 'Islamic Item',
      quantity: 1,
      quantityType: 'Kg',
      detail: 'piscing elit. Arcu, volutpat enim auctor ipsum ante tempor id. Sapien tellus pulvinar varius a dolor.',
      title: 'Khejur Gur',
    ),

  ];
  List<Product> get items {
    return [..._items1];
  }
  Product findById(String id) {
    return _items1.firstWhere((prod) => prod.id == id);
  }
  void addProduct(Product product) {
    final newProduct = Product(
        detail: product.detail,
        title: product.title,
        price: product.price,
        image: product.image,
        quantity: product.quantity,
        shippingFee: product.shippingFee,
        prePrice: product.prePrice,
      quantityType: product.quantityType,
      category: '',
        id: DateTime.now().toString(), );
    _items1.add(newProduct);

    notifyListeners();
  }
}