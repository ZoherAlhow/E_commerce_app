import 'package:e_commerce_app/utils/Colors.dart';
import 'package:flutter/cupertino.dart';

import '../utils/Dimensions.dart';

class HeadLineText extends StatelessWidget {
  Color? color;

  double size;
  final String title;
  final TextOverflow textOverflow;

  HeadLineText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      this.size = 0,
      this.textOverflow = TextOverflow.ellipsis,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.height20 : size ,
          fontWeight: FontWeight.w600),
    );
  }
}
