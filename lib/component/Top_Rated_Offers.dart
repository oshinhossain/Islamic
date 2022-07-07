
import 'package:flutter/material.dart';
import 'package:islamic/provider/model/top_rated_list.dart';
import 'package:provider/provider.dart';

class TopRated_offers extends StatelessWidget {
  //var _itemCount = null;

  @override
  Widget build(BuildContext context) {
    final ratedItem = Provider.of<Toprated_Product1>(context);
    final rated_Product = ratedItem.rateditems;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4/2,

      ),
      itemCount: 4,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: rated_Product[index],
          child: ListTile(
            isThreeLine: true,
            leading: Image.asset("${rated_Product[index].image}",fit: BoxFit.cover,),
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "${rated_Product[index].name}",
                style: TextStyle(color: Theme.of(context).errorColor),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
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
                Text(
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
