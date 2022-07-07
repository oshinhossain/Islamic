import 'package:flutter/material.dart';
import 'package:islamic/provider/model/cart_provider.dart';
import 'package:islamic/provider/model/catagory/catagory_model.dart';
import 'package:islamic/provider/model/daily_list.dart';
import 'package:islamic/provider/model/discount_list.dart';
import 'package:islamic/provider/model/order/cancelled/cancelled%20model%20class.dart';
import 'package:islamic/provider/model/order/track%20order/track%20order%20model%20class.dart';
import 'package:islamic/provider/model/product%20page/dummy_model.dart';
import 'package:islamic/provider/model/product_list.dart';
import 'package:islamic/provider/model/product_model_class.dart';
import 'package:islamic/provider/model/recently_list.dart';
import 'package:islamic/provider/model/search%20result%20view/serach%20result%20model.dart';
import 'package:islamic/provider/model/sub%20category/sub%20category%20class.dart';
import 'package:islamic/provider/model/sub%20sub%20category/sub%20sub%20category%20class.dart';
import 'package:islamic/provider/model/top_rated_list.dart';
import 'package:islamic/provider/model/top_selling_list.dart';
import 'package:islamic/provider/model/trending_list.dart';
import 'package:islamic/provider/model/wishlist_provider.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/empty%20wishlist.dart';
import 'package:islamic/screen/home_page.dart';
import 'package:islamic/screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Catagory1()),
        ChangeNotifierProvider.value(value: Cancelled2()),
        ChangeNotifierProvider.value(value: SubCategory()),
        ChangeNotifierProvider.value(value: SubSubCategory()),
        ChangeNotifierProvider.value(value: Dummy_Product()),
        ChangeNotifierProvider.value(value: OrderTracking()),

        //oshin

        ChangeNotifierProvider.value(value: Dummy_item()),
        ChangeNotifierProvider.value(value: Dummy_Product1()),
        ChangeNotifierProvider.value(value: Dummy_Product2()),
        ChangeNotifierProvider.value(value: Dummy_Product3()),
        ChangeNotifierProvider.value(value: trending_Product3()),
        ChangeNotifierProvider.value(value: recently_Product3()),
        ChangeNotifierProvider.value(value: Toprated_Product1()),
        ChangeNotifierProvider.value(value: Search_result()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Wish()),
        //ChangeNotifierProvider.value(value: Product()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            canvasColor: Colors.transparent,
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.amber,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(primary: Colors.amber))),
        home: Bottom_NavBar(
          currentTab: 0,
          currentScreen: Home_Page(),
        ),
      ),
    );
  }
}
