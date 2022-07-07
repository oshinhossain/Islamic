import 'package:flutter/material.dart';
import 'package:islamic/component/Category_Offers.dart';
import 'package:islamic/component/Daily_Offers.dart';
import 'package:islamic/component/Product_Offers.dart';
import 'package:islamic/component/Recently_Offers.dart';
import 'package:islamic/component/Top_Rated_Offers.dart';
import 'package:islamic/component/image_slide_show.dart';
import 'package:islamic/component/top_selling_offer.dart';
import 'package:islamic/component/treading_selling_offer.dart';
import 'package:islamic/nav_drawer/nav_drawer.dart';
import 'package:islamic/provider/model/daily_list.dart';
import 'package:islamic/provider/model/discount_list.dart';
import 'package:islamic/provider/model/product_list.dart';
import 'package:islamic/screen/popolar_product.dart';
import 'package:islamic/screen/search_screen.dart';
import 'package:islamic/widget/bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home_Page extends StatefulWidget {
  Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final CarouselController? _carouselSlider = CarouselController();

  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Dummy_item>(context);
    final DailyData = Provider.of<Dummy_Product1>(context);
    final DiscountData = Provider.of<Dummy_Product2>(context);

    final products = productsData.items;
    final dailyData = DailyData.items1;
    final discounData = DiscountData.items2;
    return Scaffold(
      key: _scafoldKey,
      backgroundColor: Color(0xFFEEEEEE),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              _scafoldKey.currentState!.openDrawer();
              //Drawer(child: MyDrawer());
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        showSearch(context: context, delegate: SearchList());
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/image 133.png"),
                        fit: BoxFit.contain)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 65,
                    width: MediaQuery.of(context).size.width * .45,
                    child: Image.asset(
                      "assets/image 134.png",
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                  ),
                  Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 65,
                    width: MediaQuery.of(context).size.width * .45,
                    child: Image.asset(
                      "assets/image 135.png",
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Category_offer(),
              ImageSlideShowCustom(),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Popular Products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 445,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 3.5,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10),
                    itemCount: products.length,
                    itemBuilder: (context, index) =>
                        ChangeNotifierProvider.value(
                          value: products[index],
                          child: ProductOffer(),
                        )),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PopularProduct()));
                    },
                    child: Text(
                      "See All →",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      //padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Daily Best Sells",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 445,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 3.5,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10),
                    itemCount: dailyData.length,
                    itemBuilder: (context, index) =>
                        ChangeNotifierProvider.value(
                          value: dailyData[index],
                          child: DailyOffer(),
                        )),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Text(
                    "Latest Discount Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .43,
                          child: Image.asset(
                            "assets/image 158.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 10,
                            left: 5,
                            child: Text(
                              "Bring Hala Products\n into your Home",
                            )),
                        Positioned(
                            top: 55,
                            left: 10,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Shop Now ->',
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .45,
                      child: CarouselSlider.builder(
                          itemCount: discounData.length,
                          options: CarouselOptions(
                              enlargeCenterPage: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayAnimationDuration: Duration(
                                milliseconds: 2000,
                              ),
                              height: MediaQuery.of(context).size.height),
                          carouselController: _carouselSlider,
                          itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) {
                            discounData[itemIndex];
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: ListView(
                                children: [
                                  Container(
                                      height: 100,
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        '${discounData[itemIndex].image}',
                                        fit: BoxFit.cover,
                                      )),
                                  Text(
                                    '${discounData[itemIndex].title}',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.orangeAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.grey,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 12,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '(4)',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TK.${discounData[itemIndex].price}  ',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      Text(
                                        'TK.${discounData[itemIndex].prePrice}',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    ],
                                  ),
                                  FittedBox(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.amber,
                                        minimumSize: Size(20, 30),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                          Text(
                                            '  Add to Bag',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Top Selling",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: TopSelling_Offer(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Trending Product",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: TreadingSellingOffer(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Recently Added",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: Recently_offers(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Top Rated",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: TopRated_offers(),
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
