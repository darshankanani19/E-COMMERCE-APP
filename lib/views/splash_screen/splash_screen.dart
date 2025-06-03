// import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rrr/consts/consts.dart';
import 'package:rrr/views/auth_screen/login_screen.dart';
import 'package:rrr/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg,width: 300,)),
            20.heightBox,
            applogoWidget(),
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,

          ],
        ),
      ),
    );
  }
}
