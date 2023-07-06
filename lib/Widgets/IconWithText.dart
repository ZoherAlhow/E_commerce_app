import 'package:e_commerce_app/Widgets/SmallText.dart';
import 'package:flutter/cupertino.dart';

import '../utils/Dimensions.dart';

class IconWithText extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  Color textColor;
  final double size;

  IconWithText({
    Key? key,
    required this.title,
    required this.icon,
    required this.iconColor,
    this.size = 12,
    this.textColor = const Color(0xFFccc7c5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: Dimensions.height24,),
        SizedBox(width: Dimensions.width5,),
        SmallText(title: title,color: textColor,size: Dimensions.height12,),
      ],
    );
  }
}
