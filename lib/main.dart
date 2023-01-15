import 'dart:io';
import 'package:cashbook/controllers/addbook_controller.dart';
import 'package:cashbook/models/cbook.dart';
import 'package:cashbook/routes/app_pages.dart';
import 'package:cashbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // Directory dir = await getApplicationDocumentsDirectory();
  // await Hive.initFlutter(dir.path);
  // Hive.registerAdapter<CBook>(CBookAdapter());
  // await Hive.openBox<CBook>('Cbooks');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final cbookController = Get.put<BookController>(BookController());
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'segoeUi'),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.DASHBOARD,
    );
  }

  static void changeColor(Color color, Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: color, statusBarIconBrightness: brightness));
  }
}
