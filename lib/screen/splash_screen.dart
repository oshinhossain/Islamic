import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/provider/model/helper_model.dart';
import 'package:islamic/screen/on_boarding_page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => OnBoardingPage()
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.gatScreenWidth(context),
        height: Helper.gatScreenHeight(context),
        child:     Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "images/splash1.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}