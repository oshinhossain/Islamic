import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/model/catagory/catagory model list.dart';

class PriductPage extends StatelessWidget {
  const PriductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<CatagoryModel>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: GridTile(
          footer: GridTileBar(
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
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
              Text('${product.name}'),
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
    );
  }
}