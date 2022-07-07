import 'package:flutter/material.dart';
import 'package:islamic/provider/model/sub%20category/sub%20category%20list.dart';

class SubCategory with ChangeNotifier {
  SubCategory();

  List<Subcategory1> _problem= [

    Subcategory1(
      name: 'Men Dress',
      image: 'images/surinder-pal-singh-eJNB3-ZlxJg-unsplash 2.png',

    ),
    Subcategory1(
      name: 'Women Dress',
      image: 'images/muhammad-faiz-zulkeflee-KrR7xEn4HV8-unsplash 1.png',
    ),
    Subcategory1(
      name: 'Kids Dress',
      image: 'images/andre-mouton-cipTIkvvjio-unsplash 1.png',
    ),

  ];
  List<Subcategory1> get item1{
    return [..._problem];

  }
}
