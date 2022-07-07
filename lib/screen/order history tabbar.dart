import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/cancelled.dart';
import 'package:islamic/screen/cart_screen.dart';
import 'package:islamic/screen/delivered.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/processing.dart';
import 'package:islamic/screen/profile_screen.dart';
import 'package:islamic/screen/wishlist_screen.dart';
import 'package:islamic/widget/badge.dart';
import 'package:provider/provider.dart';

class HistoryTabbar extends StatefulWidget {
//  const HistoryTabbar({Key? key}) : super(key: key);
  String ?button;
  HistoryTabbar({this.button});

  @override
  _HistoryTabbarState createState() => _HistoryTabbarState();
}

class _HistoryTabbarState extends State<HistoryTabbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child:Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Order History',style: TextStyle(color: Colors.white),),
          // leading: IconButton(onPressed: (){
          //   Navigator.of(context).pop();
          // //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));
          // },icon: Icon(Icons.arrow_back),color: Colors.white,),
            bottom:  PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Container(
                color: Colors.white,
                height: 60,
                child: TabBar(
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.grey,
                  // unselectedLabelStyle: TextStyle(color: Theme.of(context).errorColor),
                  // labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                  tabs: [Text("Delivered"), new Text("Processing"), new Text("Cancelled")],
                ),
              ),
            ),
          ),
          body:  const TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Delivered(),
              ),
              Processing(),
              Cancelled(),
            ],
          ),

            floatingActionButton: widget.button=='button'?  Consumer<Cart>(
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
            ):null,
            floatingActionButtonLocation: widget.button=='button'? FloatingActionButtonLocation.centerDocked:null,
            bottomNavigationBar:widget.button=='button'? BottomAppBar(
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
            ):null,
        ),
      ),

    );
  }
}
