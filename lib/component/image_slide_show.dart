import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlideShowCustom extends StatelessWidget {
  const ImageSlideShowCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 120,
      initialPage: 0,
      indicatorColor: Colors.amber,
      indicatorBackgroundColor: Colors.grey,
      onPageChanged: (value) {
        debugPrint('Page changed : $value');
      },
      children: [
        Stack(
          children:[ Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/Frame 1218.png"),
    fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(0),
    ),

    ),
    ),
            Positioned(
                bottom: 5,
                left: 15,
                child: ElevatedButton(
              onPressed: (){},
              child: Text('Shop Now ->',style: TextStyle(color: Colors.white),),
            ))
    ],),
        Stack(
          children:[ Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Frame 1218.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0),
              ),

            ),
          ),
            Positioned(
                bottom: 5,
                left: 15,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Shop Now'),
                ))
          ],),
                Stack(
                children:[ Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/Frame 1218.png"),
                fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0),
                ),

                ),
                ),
                Positioned(
                bottom: 5,
                left: 15,
                child: ElevatedButton(
                onPressed: (){},
    child: Text('Shop Now'),
    ))
    ],),

      ],

    );
  }
}
