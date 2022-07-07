import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/provider/model/catagory/catagory_model.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/cart_screen.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/order%20history%20tabbar.dart';
import 'package:islamic/screen/product%20_screen.dart';
import 'package:islamic/screen/profile_screen.dart';
import 'package:islamic/screen/tabbar.dart';
import 'package:islamic/screen/wishlist_screen.dart';
import 'package:islamic/widget/badge.dart';
import 'package:islamic/widget/product_item.dart';

import 'package:provider/provider.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Catagory1>(context);
    final products = productsData.item;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen()),);

            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Center(
            child: Text(
              "Product Details",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            //height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                      color: Colors.grey.shade200,
                      image:  DecorationImage(
                        image: ExactAssetImage('images/janamaj.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .28,
                          decoration: new BoxDecoration(
                            border:
                                Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: ExactAssetImage('images/janamaj.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .28,
                          decoration: new BoxDecoration(
                            border:
                                Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: ExactAssetImage('images/janamaj.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .28,
                          decoration: new BoxDecoration(
                            border:
                                Border.all(color: Colors.grey, width: 0.5),
                            color: Colors.grey.shade200,
                            image: new DecorationImage(
                              image: ExactAssetImage('images/janamaj.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Blue Janamaj",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Tk ${"210.0"}  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'TK ${"400.0"}',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Availability: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'In stock',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    const Text(
                      'Size:  ',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Container(
                     // width:MediaQuery.of(context).size.width*.,
                      child: Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                minimumSize: Size(5,25),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'S',
                              )),

                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                minimumSize: Size(5,25),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'M',
                              )),

                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                minimumSize: Size(5,25),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'L',
                              )),

                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                minimumSize: Size(5,25),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'X',
                              )),

                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                                minimumSize: Size(5,25),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'XL',
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Color:  ',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.purple,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.amber,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text('Quantity', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                    Container(
                      width: 80,
                      height: 30,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
// padding: EdgeInsets.symmetric(vertical: 0,horizontal: 6),
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
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    FittedBox(
                        child: Text(
                      "Share",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage("images/facebook-logo.png"), fit: BoxFit.cover,height: 25,),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage("images/youtube.png"),fit: BoxFit.cover,height: 25,),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage("images/twitter.png"), fit: BoxFit.cover,height: 25,),
                    SizedBox(
                      width: 15,
                    ),
                    Image(image: AssetImage("images/linkedin.png"), fit: BoxFit.cover,height: 25,),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 350,
                    child: TabBarScreen()),

                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Related Products",
                  style: TextStyle(color: Colors.black),
                ),
                const Divider(
                  color: Colors.amber,
                  thickness: 1,
                ),
                Container(
                  height: 200,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 2 / 2,
                          mainAxisSpacing: 10),
                      itemCount: products.length,
                      itemBuilder: (context, index) =>
                          ChangeNotifierProvider.value(
                            value: products[index],
                            child: PriductItem(),
                          )),
                ),
              ],
            ),
          ),
        ),
          floatingActionButton:   Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              value: cart.itemCount.toString(),
              child: ch,
            ),
            child: FloatingActionButton(

              backgroundColor: Theme.of(context).colorScheme.primary,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
              },
              child: Icon(Icons.shopping_bag_sharp,color: Colors.white,),


            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            // currentScreen =
                            //     Home_Page(); // if user taps on this dashboard tab will be active
                            // currentTab = 0;
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 0,currentScreen: Home_Page(),)), (route) => false);
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 0,currentScreen: Home_Page(),)));
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.grey,//currentTab == 0 ? Colors.amber,//: Colors.grey,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.grey,//currentTab == 0 ? Colors.amber : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Home_Page(),
                      // MyWishList(),
                      // HistoryTabbar(),
                      // ProfileScreen(),
                      // PopularProduct(),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 1,currentScreen: MyWishList(),)), (route) => false);
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 1,currentScreen: MyWishList(),)));
                            // currentScreen =
                            //     MyWishList(); // if user taps on this dashboard tab will be active
                            // currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.grey,//currentTab == 1 ? Colors.amber : Colors.grey,
                            ),
                            Text(
                              'Favorite',
                              style: TextStyle(
                                color: Colors.grey,//,currentTab == 1 ? Colors.amber: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Right Tab bar icons

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 2,currentScreen: HistoryTabbar(),)), (route) => false);
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 2,currentScreen: HistoryTabbar(),)));
                            // currentScreen =
                            //     HistoryTabbar(); // if user taps on this dashboard tab will be active
                            // currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.dashboard_outlined,
                              color: Colors.grey,//currentTab == 2 ? Colors.amber: Colors.grey,
                            ),
                            Text(
                              'History',
                              style: TextStyle(
                                color: Colors.amber,//,currentTab == 2 ? Colors.amber : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 3,currentScreen: ProfileScreen(),)), (route) => false);
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 3,currentScreen: ProfileScreen(),)));
                            // currentScreen =
                            //     ProfileScreen(); // if user taps on this dashboard tab will be active
                            // currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.account_circle,
                              color: Colors.grey,//currentTab == 3 ? Colors.amber : Colors.grey,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors.grey,//currentTab == 3 ? Colors.amber: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          )
      ),
    );
  }
}
