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
          child: Text(
            "اضافه کردن اعضا",
            style: TextStyle(fontSize: 16.0, color: myBlack),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Container(
                  color: myLightGreen,
                  padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle,color: myGreen,),
                      SizedBox(width: 15,),
                      Text('نام با موفقیت اضافه شد',style: TextStyle(color: myBlack),)
                    ],
                  ),
                ),
                TextButton(onPressed:(){
                  Get.toNamed('/edit_book_screen');
                }, child: Text('go next'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
