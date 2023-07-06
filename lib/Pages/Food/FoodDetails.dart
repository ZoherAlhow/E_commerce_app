import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/CircularIcon.dart';
import '../../Widgets/ExpandedText.dart';
import '../../Widgets/FullFoodInfo.dart';
import '../../Widgets/HeadLineText.dart';
import '../../Widgets/IconWithText.dart';
import '../../Widgets/SmallText.dart';
import '../../utils/Colors.dart';
import '../../utils/Dimensions.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.foodDetailsImg,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/peanut-oil-fried-chicken-wings.jpg'))),
              )),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularIcon(icon: Icons.arrow_back_ios),
                CircularIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //Reusable Food Widget
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.foodDetailsImg - Dimensions.height20,
              child: Container(
                padding: EdgeInsets.all(Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.width20),
                        topRight: Radius.circular(Dimensions.width20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FullFoodInfo(
                      foodName: "Chicken Wings",
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    HeadLineText(title: 'Introduce'),
                    SizedBox(height: Dimensions.height10,),
                    Expanded(
                      child: SingleChildScrollView(
                          child: ExpandedText(text: 'hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi hello my name is zoher i am 23 years old i love flutter my favourite sport is football and  my favourite player is leo messi')),
                    ),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomNavigationBarHeight,
        color: AppColors.buttonBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.width20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width5,
                  ),
                  HeadLineText(title: '0', color: AppColors.signColor),
                  SizedBox(
                    width: Dimensions.width5,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.width20),
                color: AppColors.mainColor,
              ),
              child: HeadLineText(title: "10\$ | Add to cart",color: Colors.white,)
            ),
          ],
        ),
      ),
    );
  }
}
