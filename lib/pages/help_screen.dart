import 'package:cashbook/controllers/help_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreen extends GetView<HelpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(child: Text('help screen')),
        ),
      ),
    );
  }
}
