import 'package:flutter/material.dart';
import 'package:islamic/screen/checkout1.dart';


class CouponBox extends StatefulWidget {
  const CouponBox({Key? key}) : super(key: key);

  @override
  _CouponBoxState createState() => _CouponBoxState();
}

class _CouponBoxState extends State<CouponBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              FittedBox(
                child: Text(
                  "If you have a coupon code, please apply it below.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 40,
                    width: MediaQuery.of(context).size.width * .5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'enter coupon code here',
                        hintStyle: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(child: Text('APPLY',style: TextStyle(fontSize: 16, color: Colors.white),)),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout1()));
                      },
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
