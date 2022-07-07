import 'package:flutter/material.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/cart_screen.dart';
import 'package:islamic/screen/filter.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/profile_screen.dart';
import 'package:islamic/screen/wishlist_screen.dart';
import 'package:islamic/widget/dropdown.dart';
import 'package:islamic/widget/product_grid.dart';
import 'package:provider/provider.dart';

import '../provider/model/cart_provider.dart';
import '../widget/badge.dart';
import 'order history tabbar.dart';


class PopularProduct extends StatefulWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  State<PopularProduct> createState() => _PopularProductState();
}

class _PopularProductState extends State<PopularProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white,)),
          title: const Text(
            "Popular Product",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 5,),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications_outlined, color: Colors.white),
            ),
          ],
        ),
      //  bottomNavigationBar: Bottom_NavBar() ,
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: ListView(
            children: [
              Container(
                height: 35,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Container(
                height: 600,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: ProductGrid(),
              ),
            ],
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