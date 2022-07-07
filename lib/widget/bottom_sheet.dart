import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/provider/model/wishlist_provider.dart';
import 'package:islamic/screen/checkout1.dart';
import 'package:islamic/screen/product%20details.dart';
import 'package:provider/provider.dart';

import '../provider/model/wishlist_provider.dart';


class MyBottomSheet extends StatefulWidget {
  static const routeName = '/bottomSheet';

  String? productName;
  String? productImage;
  int? productPrice;
  int? productPrePrice;
  String? productDetail;
  MyBottomSheet({
    this.productName,
    this.productImage,
    this.productDetail,
    this.productPrePrice,
    this.productPrice,
  });

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    //final product = Provider.of<Product>(context, listen: false);

    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 10, 40, 80),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 150,
                    child: Image.asset(
                      widget.productImage!,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productName!,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),

                    InkWell(
                      onTap: (){
                    // final product = Provider.of<Product>(context, listen: false);
                     //    Product prod = Product(product.id,
                     //        product.price, product.title, product.image);
                     print("+++++++++++");
                        Provider.of<Wish>(context, listen:
                        false).addItem(widget.productName.toString(),widget.productPrice!, widget.productName.toString(), widget.productImage.toString());
                       // widget.addItem(product.id, product.price, product.title,product.image);
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey,
                        child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 16,
                          ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                RichText(
                  text: TextSpan(
                    text: 'Tk ${widget.productPrice}  ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'TK ${widget.productPrePrice}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("${widget.productDetail}"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Size:  ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 150,
                          child: FittedBox(
                            child: Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'S',
                                      style: TextStyle(fontSize: 20),
                                    )),
                                SizedBox(
                                  width: 6,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'M',
                                      style: TextStyle(fontSize: 20),
                                    )),
                                SizedBox(
                                  width: 6,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'L',
                                      style: TextStyle(fontSize: 20),
                                    )),
                                SizedBox(
                                  width: 6,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'X',
                                      style: TextStyle(fontSize: 20),
                                    )),
                                SizedBox(
                                  width: 6,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'XL',
                                      style: TextStyle(fontSize: 20),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'required',
                      style: TextStyle(
                          color: Theme.of(context).errorColor, fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Color:  ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.purple,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.amber,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'required',
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('Quantity'),
                    Container(
                      width: 80,
                      height: 30,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6)),
                      child: FittedBox(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (count > 1) count--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                            Text(
                              '${count}',
                              style: TextStyle(fontSize: 18),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Theme.of(context).primaryColor)),
                        child: TextButton(
                            onPressed: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProductDetails()));

                            },
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Text(
                              'Add to cart',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
    print("product added");
    Provider.of<Cart>(context, listen:
    false).addItem(widget.productName.toString(),widget.productPrice!, widget.productName.toString(), widget.productImage.toString());
    // widget.addItem(product.id, product.price, product.title,product.image);
    },

                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              right: 3,
              top: -6,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.cancel_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ))
        ],
      ),
    );
  }
}
