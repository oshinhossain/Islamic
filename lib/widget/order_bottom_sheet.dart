import 'package:flutter/material.dart';
import 'package:islamic/screen/bottom_app_bar.dart';
import 'package:islamic/screen/track%20order.dart';
class OrderBottomSheet extends StatelessWidget {
  const OrderBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(

        margin: EdgeInsets.fromLTRB(15, 150, 15, 290),
        height: MediaQuery.of(context).size.height*.8,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
child: Column(children: [
  Container(
      margin: EdgeInsets.fromLTRB(50, 50, 50, 30),
      child: Image.asset('images/Rectangle 237.png')),

  Text('Order Successful',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Text('Your order id #1245 successfully placed'),
  ),
  ElevatedButton(
      // style: ElevatedButton.styleFrom(minimumSize: Size(80, 40)),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrackOrder()));
      },
      child: Text('TRACK ORDER',style: TextStyle(color: Colors.white),)),
  TextButton(onPressed: (){
    Navigator.of(context).pop();
   // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bottom_NavBar()));
  }, child: Text('Go to Homepage',style: TextStyle(fontSize: 18),))
],),
      ),
    );
  }
}
