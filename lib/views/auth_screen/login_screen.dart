import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rrr/consts/consts.dart';
import 'package:rrr/consts/lists.dart';
import 'package:rrr/views/auth_screen/signup_screen.dart';
import 'package:rrr/views/home_screen/home.dart';
import 'package:rrr/widgets_common/applogo_widget.dart';
import 'package:rrr/widgets_common/bg_widget.dart';
import 'package:rrr/widgets_common/custom_textfield.dart';
import 'package:rrr/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false
      ,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight*0.1).heightBox,
applogoWidget(),
            10.heightBox,
            "Log in to $appname ".text.fontFamily(bold).size(18).white.make(),
            15.heightBox,

            Column(
              children: [
                customTextField(title: email,hint: emailHint),
                customTextField(title: password,hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetpass.text.make())),
                5.heightBox,
                ourButton(color: redColor,title: login,textColor: whiteColor,onPress: (){
                  Get.to(()=>Home());
                }).box.width(context.screenWidth-50).make(),
                5.heightBox,
                creatNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(color:  lightGolden,title: signup,textColor: redColor,onPress: (){
                  Get.to(()=>SignupScreen());
                }).box.width(context.screenWidth-50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index)=>Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,

                      backgroundColor: lightGrey,
                      child: Image.asset(socialIconList[index],width: 30,),
                    ),
                  )),
                ),

              ],

            ).box.rounded.white.padding(EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
