import 'package:e_commerce_app/Pages/Home/MainFoodPage.dart';
import 'package:e_commerce_app/Widgets/HeadLineText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets/default_text_field.dart';
import 'SignUp.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 200, horizontal: 20),
          child: Column(
            children: [
              MyTextFiled(
                text: 'Username',
                textEditingCtrl: email,
              ),
              MyTextFiled(
                text: 'Password',
                textEditingCtrl: password,
              ),
              SizedBox(height: 10,),
              MaterialButton(
                shape: UnderlineInputBorder(borderRadius:BorderRadius.circular(5)),
                onPressed: () {
                  if (email.text.isEmpty || password.text.isEmpty) {
                    Get.snackbar(
                        'Invalid Input', 'Some required input field is empty');
                  }
                  if (email.text.isNotEmpty && password.text.isNotEmpty) {
                    //here comes the logic
                    Get.to(MainFoodPage());
                    Get.snackbar('Permission Accepted',
                        'Welcome ${email.text.toString()}');
                  }
                },
                color: Colors.blue,
                child: Text('Login',style: TextStyle(color: Colors.white)),
                minWidth: double.infinity,
                height: 50,
              ),
              SizedBox(height: 30,),
              HeadLineText(title: 'Don\'t You have an account?'),
              TextButton(
                onPressed: () {
                  Get.to(SignUp());
                },
                child: Text('Sign Up Here'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
