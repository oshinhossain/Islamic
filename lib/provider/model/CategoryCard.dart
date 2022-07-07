import 'package:flutter/cupertino.dart';

class CategoryCard with ChangeNotifier{
  String? productName;
  String? quantity;
  String? productImageUrl;
  CategoryCard({required this.productImageUrl,required this.productName, required this.quantity});
  static List<CategoryCard> list=[
    CategoryCard(
      productImageUrl: "assets/image 136.png",
      productName: "Offers",
      quantity: "25 item",
    ),
    CategoryCard(
      productImageUrl: "assets/image 141.png",
      productName: "Sri Lankan",
      quantity: "25 item",

    ),
    CategoryCard(
      productImageUrl: "assets/image 140.png",
      productName: "Italian",
      quantity: "25 item",
    ),
    CategoryCard(
      productImageUrl: "assets/image 141.png",
      productName: "Indian",
      quantity: "25 item",
    ),
    CategoryCard(
      productImageUrl: "assets/image 136.png",
      productName: "Sri Lankan",
      quantity: "25 item",
    ),
    CategoryCard(
      productImageUrl: "assets/image 140.png",
      productName: "Sri Lankan",
      quantity: "25 item",

    ),
  ];
  void setProductDetailData({required String productName, required String productImageUrl, required String quantity}) {}

}