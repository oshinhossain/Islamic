import 'package:flutter/material.dart';
import 'package:islamic/provider/model/trending_list.dart';

import 'package:provider/provider.dart';

class TreadingSellingOffer extends StatelessWidget {
  //var _itemCount = null;

  @override
  Widget build(BuildContext context) {
    final treadingsellingItem = Provider.of<trending_Product3>(context);
    final trenselling = treadingsellingItem.trenditems;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4/2,

      ),
      itemCount: 4,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: trenselling[index],
          child: ListTile(
            isThreeLine: true,
            leading: Image.asset(trenselling[index].image,fit: BoxFit.cover,),
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                trenselling[index].name,
                style: TextStyle(color: Theme.of(context).errorColor),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 12,
                    ),
                    Text(
                      "(14)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const Text(
                  "42",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
