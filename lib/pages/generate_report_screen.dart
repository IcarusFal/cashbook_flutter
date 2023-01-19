
import 'package:cashbook/controllers/generate_report_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../constants.dart';

class GenerateReportScreen extends GetView<GenerateReportController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: IconButton(
              icon: Icon(Icons.arrow_forward, color: myBlack),
              onPressed: () => Get.back(),
            ),
          )
        ],
        backgroundColor: myWhite,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "ایجاد گزارش",
            style: TextStyle(fontSize: 16.0, color: myBlack),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.settings),
          color: myBlue,
          iconSize: 21,
          style: IconButton.styleFrom(
              padding: EdgeInsets.zero, minimumSize: Size.zero),
          onPressed: () {},
        ),
      ),
      body: SafeArea(child: Container(),),
    );
  }

}