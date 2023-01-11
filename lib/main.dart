import 'package:cashbook/routes/app_pages.dart';
import 'package:cashbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'segoeUi'),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.DASHBOARD,
      
    );
  }
  static void changeColor(Color color,Brightness brightness){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color,statusBarIconBrightness: brightness));
  }
}
