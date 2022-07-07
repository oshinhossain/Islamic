import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/cart_screen.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/order%20history%20tabbar.dart';
import 'package:islamic/screen/profile_screen.dart';
import 'package:islamic/screen/wishlist_screen.dart';
import 'package:islamic/widget/badge.dart';
import 'package:provider/provider.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
          Navigator.of(context).pop();
        },),
        title: FittedBox(
          child: Text(
            "Product Details",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_outlined, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  "Write Your Own Reviews",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Table(
                  border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: .5),
                  children: [
                    TableRow( children: [
                      Column(children:[Text(' ', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Text('1 Star', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Text('2 Star', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Text('3 Star', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Text('4 Star', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Text('5 Star', style: TextStyle(fontSize: 10.0))]),
                    ]),
                    TableRow( children: [
                      Column(children:[Text('Quality', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Icon(Icons.radio_button_off, size: 10, color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),

                    ]),
                    TableRow( children: [
                      Column(children:[Text('Price', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),

                    ]),
                    TableRow( children: [
                      Column(children:[Text('Value', style: TextStyle(fontSize: 10.0))]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),
                      Column(children:[Icon(Icons.radio_button_off,size: 10,color: Colors.grey,)]),

                    ]),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              FittedBox(
                child: Text(
                  "Your Name",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              FittedBox(
                child: Text(
                  "Summary",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              FittedBox(
                child: Text(
                  "Review",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    maximumSize: Size(125, 40),
                    primary: Colors.amber,
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(child: Text('Submit',style: TextStyle(fontSize: 16, color: Colors.white),)),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
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
    );
  }
}


