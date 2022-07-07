import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/model/product_model_class.dart';

class Discount_product extends StatelessWidget {
  const Discount_product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      //width: MediaQuery.of(context).size.width,
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
                  minimumSize: Size(90,30),

                ),
                onPressed: (){},child:Row(
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
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                  height: 100,
                  alignment: Alignment.center,
                  child: Image.asset(
                    '${product.image}',
                    fit: BoxFit.cover,
                  )),
              Text('${product.title}'),
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
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'TK.${product.price}  ',
                    style: TextStyle(color:Colors.green),
                  ),
                  Text(
                    'TK.${product.prePrice}',
                    style: TextStyle(color:Colors.grey,decoration:TextDecoration.lineThrough ),
                  ),

                ],
              ),

            ],
          ),
      ),
    );
  }
}
