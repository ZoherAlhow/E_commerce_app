import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
   MyTextFiled({Key? key,required this.text,this.suffixIcon,required this.textEditingCtrl}) : super(key: key);
final String text;
Widget? suffixIcon;
var textEditingCtrl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 50,
        child: TextFormField(controller: textEditingCtrl,
          decoration: InputDecoration(suffixIcon:suffixIcon ,
              labelText: text,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black45),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15))),
        ));
  }
}
