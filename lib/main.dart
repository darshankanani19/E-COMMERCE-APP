// import "package:flutter/material.dart";
import "package:get/get_navigation/src/root/get_material_app.dart";
import "package:rrr/consts/consts.dart";
import "package:rrr/views/splash_screen/splash_screen.dart";
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        fontFamily: regular,

      ),
      home: SplashScreen(),
    );
  }
}
