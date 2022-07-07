import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/provider/model/product_model_class.dart';
import 'package:islamic/widget/bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../screen/checkout1.dart';

class PriductItem extends StatelessWidget {
  const PriductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          isDismissible: false,
          isScrollControlled: true,

          context: context,
          builder: (BuildContext context) {
            return MyBottomSheet(
              productImage: product.image,
              productName: product.title,
              productDetail: product.detail,
              productPrePrice: product.prePrice,
              productPrice: product.price,
            );
          },
        );
        },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1)
        ),
        child: GridTile(
            footer: GridTileBar(
              title: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  minimumSize: Size(80, 30),
                ),
                onPressed: () {
                  cart.addItem(product.id, product.price, product.title,product.image);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      'Add to Bag',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                    height: 100,
                    width: 70,
                    child: Image.asset(
                      '${product.image}',
                      fit: BoxFit.cover,
                    )),
                Text('${product.title}'),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    '${product.quantity}${product.quantityType}',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                Text(
                  '${product.price}',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            )),
      ),
    );
  }
}
