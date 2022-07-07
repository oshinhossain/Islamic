import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/widget/bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../provider/model/product_model_class.dart';

class DailyOffer extends StatelessWidget {
  const DailyOffer({Key? key}) : super(key: key);

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
        decoration:
        BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey)),
        child: GridTile(
            footer: GridTileBar(

              title: FittedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber,
                    minimumSize: Size(90, 30),

                  ),
                  onPressed: (){
                    cart.addItem(product.id, product.price, product.title,product.image);
                  },child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 17,
                    ),

                    Text(
                      '  Add to Bag',
                      style: TextStyle(color:Colors.white),
                    ),


                  ],
                ),
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                    height: 100,

                    child: Image.asset(
                      '${product.image}',
                      fit: BoxFit.cover,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${product.title}'),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        '${product.quantityType}${product.quantity}',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'TK.${product.price}',
                      style: TextStyle(color:Colors.green),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '(4)',
                          style: TextStyle(color:Colors.black),
                        )

                      ],
                    ),

                  ],
                ),

              ],
            )),
      ),
    );
  }
}
