import 'package:flutter/material.dart';
import 'package:islamic/provider/model/search%20result%20view/serach%20result%20model.dart';
import 'package:islamic/screen/filter.dart';
import 'package:islamic/widget/dropdown.dart';

import 'package:provider/provider.dart';


class Seach_result extends StatelessWidget {
  const Seach_result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Search_result>(context, listen: false);
    final item1 = product.search;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}, color: Colors.white,),
          title: Text("Kishmish",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Your search for “kishmish” revealed the following:",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
              height: 35,
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.grey,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Filter()));
                            },
                            child: Text(
                              'Filters',
                              style: TextStyle(
                                  color: Theme
                                      .of(context)
                                      .primaryColor),
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.height,
                          color: Colors.grey,
                        ),
                        MyDropDown(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("4 Results Found",
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 3.5),
                itemCount: item1.length,
                itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: item1[index],
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: GridTile(
                        footer: GridTileBar(
                          title: FittedBox(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                minimumSize: Size(90, 30),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Text(
                                    '  Add to Bag',
                                    style: TextStyle(color: Colors.white),
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
                                  '${item1[index].image}',
                                  fit: BoxFit.cover,
                                )),
                            Text('${item1[index].title}'),
                            Text(
                              '${item1[index].quantity}${item1[index].quantityType}',
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              'TK.${item1[index].price}',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
