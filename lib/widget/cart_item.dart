import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:provider/provider.dart';

class CartItems extends StatefulWidget {
  //const CartItems({Key? key}) : super(key: key);
  final String? id;
  final String? productId;
  final String? name;
  final int? quantity;

  final int? price;
  final String? imageUrl;
  CartItems(
      {this.id,
        this.productId,
        this.price,
        this.quantity,

        this.name,
        this.imageUrl});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child:ListTile(
          isThreeLine: true,
          subtitle: FittedBox(
            child: Container(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Icon(Icons.star,color: Theme.of(context).primaryColor,size: 12,),
                    Icon(Icons.star,color: Theme.of(context).primaryColor,size: 12,),
                    Icon(Icons.star,color: Theme.of(context).primaryColor,size: 12,),
                    Icon(Icons.star,color: Theme.of(context).primaryColor,size: 12,),
                    Icon(Icons.star,color: Theme.of(context).primaryColor,size: 12,),
                    Text('(10 Reviews)'),
                  ],),
                  Text('Tk ${widget.price}'),
                ],
              ),
            ),
          ),
          leading: Container(
              width: 80,
              child: Image.asset('${widget.imageUrl}',fit: BoxFit.cover,)),
          title: Text('${widget.name}',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
          trailing: Container(
            width: 120,
            child: Row(

              children: [
           //   IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Theme.of(context).primaryColor,)),
              Container(
               // width: 80,
                height: 30,
                //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
              ),

              IconButton(onPressed: (){

                  showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text('Are you sure?'),
                              content: Text('Do you want to remove the item?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text('NO'),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Provider.of<Cart>(context, listen: false).removeItem(widget.productId);
                                      Navigator.of(ctx).pop(true);
                                    },
                                    child: Text('Yes'))
                              ],
                            ));


              }, icon: Icon(Icons.close,color: Theme.of(context).errorColor,)),
            ],),
          ),
        )
      );

  }
}
