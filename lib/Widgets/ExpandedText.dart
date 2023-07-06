import 'package:e_commerce_app/Widgets/SmallText.dart';
import 'package:e_commerce_app/utils/Colors.dart';
import 'package:e_commerce_app/utils/Dimensions.dart';
import 'package:flutter/material.dart';

class ExpandedText extends StatefulWidget {
  final String text;

  ExpandedText({required this.text});

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.89;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt(), widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              title: firstHalf,
              height: 1.6,
              color: AppColors.paraColor,
              size: Dimensions.width15,
            )
          : Column(
              children: [
                hiddenText
                    ? SmallText(
                        title: firstHalf + "...",
                        height: 1.6,
                        color: AppColors.paraColor,
                        size: Dimensions.width15,
                      )
                    : SmallText(
                        title: firstHalf + secondHalf,
                        height: 1.6,
                        color: AppColors.paraColor,
                        size: Dimensions.width15,
                      ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        title: hiddenText?'Show More':'Show Less',
                        color: AppColors.mainColor,
                      ),
                      Icon(hiddenText?
                        Icons.arrow_drop_down:Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
