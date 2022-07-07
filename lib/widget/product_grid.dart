import 'package:flutter/material.dart';
import 'package:islamic/widget/bottom_sheet.dart';
import 'package:islamic/widget/product_item.dart';
import 'package:provider/provider.dart';

import '../provider/model/product page/dummy_model.dart';
import '../provider/model/product_model_class.dart';
class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Dummy_Product>(context);
    final products = productsData.items;
    return Container(
      margin: EdgeInsets.all(10.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: products.length,
          itemBuilder: (context, index)=>ChangeNotifierProvider.value(
            value: products[index],
            child:PriductItem(),
          ) ),
    );
  }
}
