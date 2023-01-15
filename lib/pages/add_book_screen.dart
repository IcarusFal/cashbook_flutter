import 'package:cashbook/constants.dart';
import 'package:cashbook/controllers/addbook_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddBookScreen extends GetView<BookController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
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
          child: new Text(
            "اضافه کردن اعضا",
            style: new TextStyle(fontSize: 16.0, color: myBlack),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: TextButton(
            onPressed: () => Get.back(),
            child: Text('book'),
          ),
        ),
      ),
    );
  }
}
