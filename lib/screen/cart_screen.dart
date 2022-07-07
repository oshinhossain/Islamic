import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/checkout1.dart';
import 'package:islamic/screen/coupon%20text%20box.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/order%20history%20tabbar.dart';
import 'package:islamic/screen/profile_screen.dart';
import 'package:islamic/screen/wishlist_screen.dart';
import 'package:islamic/widget/badge.dart';
import 'package:islamic/widget/cart_item.dart';
import 'package:provider/provider.dart';
class CartScreen extends StatefulWidget {
  static const routeName = '/cart-screen';
  final String? id;
  final String? productId;
  final String? name;
  final int? quantity;
  final int? price;

  CartScreen({this.id, this.productId, this.price, this.quantity, this.name,});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
        title: Text('My Cart',style: TextStyle(color: Colors.white),),

      ),
      body:ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartItems(
                  id: cart.items.values.toList()[i].id,
                  productId: cart.items.keys.toList()[i],
                  price: cart.items.values.toList()[i].price,
                  quantity: cart.items.values.toList()[i].quantity,
                  name: cart.items.values.toList()[i].name,
                  imageUrl: cart.items.values.toList()[i].imageUrl,
                )),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
            child:
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'coupon code'
                ),
              ),
              trailing: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CouponBox()));
                },
                child: Container(
                    height:40,
                    width:70,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.primary),
                    child: Center(child: Text('Apply',style:TextStyle(color: Colors.white,),))),
              ),
            ),),
          Container(

            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(children: [Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.black,width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub total',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),

                  Text('${cart.subAmount}',style: TextStyle(fontSize: 18,color: Colors.amber))
                ],
              ),
            ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
                    Text('${cart.shippingAmount}',style: TextStyle(fontSize: 18,color: Colors.amber),)
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.black,width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    AnimatedFlipCounter(
                      value: cart.totalAmount,
                      duration: Duration(seconds: 1),
                      curve: Curves.bounceOut,
                      wholeDigits: 4,
                      fractionDigits: 1,
                      textStyle: TextStyle(fontSize: 18, color: Colors.amber),
                    ),
                    //Text('${cart.totalAmount}',style: TextStyle(fontSize: 18,color: Colors.amber),)
                  ],
                ),
              ),
            ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(90, 40)),
                onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout1()));
            }, child: Text('Proceed to CheckOut',style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 30,)
        ],
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
