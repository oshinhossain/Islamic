import 'package:flutter/material.dart';
import 'package:islamic/provider/model/sub%20sub%20category/sub%20sub%20category%20list.dart';

class SubSubCategory with ChangeNotifier {
  SubSubCategory();

  List<Subcategory2> _subcategory= [

    Subcategory2(
      name: 'Hijab',
      image: 'images/hijab.png',

    ),
    Subcategory2(
      name: 'Khemar',
      image: 'images/khemar.png',
    ),
    Subcategory2(
      name: 'Burqa',
      image: 'images/burqa.png',
    ),
    Subcategory2(
      name: 'Abaya',
      image: 'images/abeya.png',
    ),
    Subcategory2(
      name: 'Niqab',
      image: 'images/niqab.png',
    ),
    Subcategory2(
      name: 'Kaftan',
      image: 'images/kaftan.png',
    ),
    Subcategory2(
      name: 'Kurta Pajama',
      image: 'images/kurta.png',
    ),

  ];
  List<Subcategory2> get item2{
    return [..._subcategory];

  }
}
