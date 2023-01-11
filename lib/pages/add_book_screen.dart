import 'package:cashbook/controllers/addbook_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddBookScreen extends GetView<BookController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text('book'),
        ),
      ),
    );
  }
}
