import 'package:flutter/material.dart';
import '../provider/model/CategoryCard.dart';

class Category_offer extends StatelessWidget {
  const Category_offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: CategoryCard.list.length,
          itemBuilder: (BuildContext context, i) {
            CategoryCard categoriData = CategoryCard.list[i];
            return Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 90,
                  //color: Colors.deepOrangeAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                          CategoryCard.list[i].productImageUrl.toString()),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  CategoryCard.list[i].productName.toString(),
                  style: TextStyle(color: Colors.black),
                ),


              ],
            );
          },
        ),
      ),
    );
  }
}
