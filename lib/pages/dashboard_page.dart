import 'package:cashbook/constants.dart';
import 'package:cashbook/controllers/dashboard_controller.dart';
import 'package:cashbook/pages/home_screen.dart';
import 'package:cashbook/pages/help_screen.dart';
import 'package:cashbook/pages/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashbordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller){
      return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeScreen(),
            HelpScreen(),
            SettingScreen(),            
          ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: myGray,
        selectedItemColor: myBlue,
        onTap: controller.changeTabIndex,
        currentIndex: controller.tabIndex,
        type: BottomNavigationBarType.fixed,
         iconSize: 30,
        // showSelectedLabels: false,
        items: [
        _bottomNavigationBarItem(icon: Icons.file_copy,label: 'حساب من'),
        _bottomNavigationBarItem(icon: Icons.help_outline,label: 'راهنما'),
        _bottomNavigationBarItem(icon: Icons.settings,label: 'تنظیمات'),
      ],),
    );
    },);
  }

  _bottomNavigationBarItem({IconData? icon, String? label}){
    return BottomNavigationBarItem(icon: Icon(icon),label: label);
  }
}
