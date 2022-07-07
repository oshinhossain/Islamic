import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'catagory model list.dart';

class Catagory1 with ChangeNotifier {

   List<CatagoryModel> _list = [

     CatagoryModel(
       quantity: 1,
       quantityType: "pc",
       price: 200,
       name: 'Green & white Janamaz',
       image: 'images/green janamaj.png',
     ),

     CatagoryModel(
       quantity: 1,
       quantityType: "pc",
       price: 210,
       name: 'Red & Golden Janamaz',
       image: 'images/red janamaj.png',
     ),
    CatagoryModel(
      name: 'pink Hijab',
      image: 'images/muhammad-faiz-zulkeflee-KrR7xEn4HV8-unsplash 1.png',
      quantity: 1,
      quantityType: "pc",
      price: 210,
    ),
    CatagoryModel(
      quantity: 1,
      quantityType: "pc",
      price: 210,
      name: 'Off white Hijab',
      image: 'images/yusron-el-jihan-YoC92_GCSvQ-unsplash 1.png',
    ),
    CatagoryModel(
      quantity: 1,
      quantityType: "pc",
      price: 210,
      name: 'Sing tupi',
      image: 'images/yusron-el-jihan-YoC92_GCSvQ-unsplash 1.png',
    ),
    CatagoryModel(
      quantity: 1,
      quantityType: "pc",
      price: 210,
      name: 'White Dupatta',
      image: 'images/khaled-ghareeb-xZSEvSlHRv8-unsplash 1.png',
    ),
    CatagoryModel(
      quantity: 1,
      quantityType: "pc",
      price: 210,
      name: 'White Abakaba',
      image: 'images/artur-aldyrkhanov-RnyZVY9KDNE-unsplash 1.png',
    ),
    CatagoryModel(
      quantity: 1,
      quantityType: "pc",
      price: 210,
      name: 'Kids Abaya',
      image: 'images/andre-mouton-cipTIkvvjio-unsplash 1.png',
    ),

  ];

  void setFavourite(int index) {
    // isFavourite=!isFavourite;
    _list[index].isFavorite = _list[index].isFavorite;
    notifyListeners();
  }

  List<CatagoryModel> get item {
    return [..._list];
  }

  void setProductDetailData(
      {required String productName,
      required String productImageUrl,
      required String productPrice}) {}
}
