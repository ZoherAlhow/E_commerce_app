import 'package:flutter/material.dart';

import '../utils/Colors.dart';
import '../utils/Dimensions.dart';
import 'HeadLineText.dart';
import 'IconWithText.dart';
import 'SmallText.dart';

class FullFoodInfo extends StatelessWidget {
  final String foodName;

  FullFoodInfo({required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadLineText(title: foodName,size: Dimensions.height26,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: Dimensions.height15,
                  )),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(title: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(title: '1287 Comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconWithText(
                title: 'Normal',
                icon: Icons.circle_sharp,
                iconColor: AppColors.iconColor1),
            IconWithText(
                title: '1.7km',
                icon: Icons.location_on,
                iconColor: AppColors.mainColor),
            IconWithText(
                title: '32min',
                icon: Icons.access_time_rounded,
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
