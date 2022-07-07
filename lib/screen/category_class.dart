import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/provider/model/sub%20category/sub%20category%20class.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/cart_screen.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/order%20history%20tabbar.dart';
import 'package:islamic/screen/profile_screen.dart';
import 'package:islamic/screen/sub%20sub%20category.dart';
import 'package:islamic/screen/wishlist_screen.dart';
import 'package:islamic/widget/badge.dart';
import 'package:provider/provider.dart';

class CategoryClass extends StatefulWidget {
  const CategoryClass({Key? key}) : super(key: key);

  @override
  State<CategoryClass> createState() => _CategoryClassState();
}

class _CategoryClassState extends State<CategoryClass> {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<SubCategory>(context);
  final list1 = list.item1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(icon:Icon(Icons.arrow_back, color: Colors.white,),onPressed: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 0,currentScreen: Home_Page(),)), (route) => false);
         // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));

         // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));
        },),
        title: Text(
          "Modest Dress",
          style: TextStyle(
            fontSize: 20,

            color: Colors.white,
            fontWeight: FontWeight.bold,
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
        child: Container(
          height: MediaQuery.of(context).size.height-90,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20),
              itemCount: list1.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Subcategory3()),);
                        },
                          child: Image(image: AssetImage("${list1[index].image}"))),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(list1[index].name),
                      ),
                    ],
                  ),
                );
              }),
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
                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 0,currentScreen: Home_Page(),)));
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
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 2,currentScreen: MyWishList(),)), (route) => false);
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 2,currentScreen: HistoryTabbar(),)));
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_NavBar(currentTab: 3,currentScreen: ProfileScreen(),)));
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
        ),
    );
  }
}



