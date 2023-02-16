import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:cashbook/controllers/addbook_controller.dart';
import 'package:cashbook/controllers/home_screen_controller.dart';
import 'package:cashbook/main.dart';
import 'package:cashbook/models/cbook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class HomeScreen extends GetView<HomeController> {
  String title = '';

  @override
  Widget build(BuildContext context) {
    final cbookControllerP = Get.find<BookController>();
    final _formKey = GlobalKey<FormState>();

    MyApp.changeColor(myBlue, Brightness.light);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.bottomSheet(
            Expanded(
              child: Container(
                // height: 300,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اضافه کردن حساب جدید',
                            style: TextStyle(color: myBlack, fontSize: 18),
                          ),
                          IconButton(
                            enableFeedback: false,
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.close,
                              color: myBlack,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: myGray,
                        height: 0.5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            onSaved: (value) => title = value.toString(),
                            autofocus: true,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 0, bottom: 0, right: 15, left: 15),
                              labelText: 'عنوان حساب',
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: myGray,
                                  width: 0.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: myBlue,
                                  width: 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //set isPrivate
                      Obx(
                        () => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                    side: BorderSide(
                                      color: cbookControllerP.isPrivate.value
                                          ? backgroundGray
                                          : myBlue,
                                      width: 0.5,
                                    ),
                                    textStyle: TextStyle(
                                        color: cbookControllerP.isPrivate.value
                                            ? myGrey
                                            : myBlue),
                                    backgroundColor:
                                        cbookControllerP.isPrivate.value
                                            ? backgroundGray
                                            : myLighBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  onPressed: () => {
                                    cbookControllerP.setIsPrivate(
                                        !cbookControllerP.isPrivate.value)
                                  },
                                  label: Text('حساب عمومی',
                                      style: TextStyle(
                                        color: cbookControllerP.isPrivate.value
                                            ? myGrey
                                            : myBlue,
                                      ),
                                      textDirection: TextDirection.rtl),
                                  icon: Icon(
                                    Icons.group,
                                    color: cbookControllerP.isPrivate.value
                                        ? myGrey
                                        : myBlue,
                                  ),
                                ),
                              ),
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextButton.icon(
                                  style: TextButton.styleFrom(
                                    side: BorderSide(
                                      color: cbookControllerP.isPrivate.value
                                          ? myBlue
                                          : backgroundGray,
                                      width: 0.5,
                                    ),
                                    backgroundColor:
                                        cbookControllerP.isPrivate.value
                                            ? myLighBlue
                                            : backgroundGray,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                  onPressed: () => {
                                    cbookControllerP.setIsPrivate(
                                        !cbookControllerP.isPrivate.value)
                                  },
                                  label: Text(
                                    'حساب خصوصی',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: cbookControllerP.isPrivate.value
                                          ? myBlue
                                          : myGrey,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.file_copy,
                                    color: cbookControllerP.isPrivate.value
                                        ? myBlue
                                        : myGray,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //end of set isPrivate
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'توجه : فقط شما به حساب خصوصی دسترسی دارید.',
                          style: TextStyle(fontSize: 13, color: myDarkerGray),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: myGray,
                        height: 0.5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: OutlinedButton(
                          onPressed: () {
                            _formKey.currentState!.save();
                            cbookControllerP.addCBook(CBook(
                                title: title,
                                isPrivate: cbookControllerP.isPrivate.value));
                            Navigator.of(context).pop();

                            if (cbookControllerP.isPrivate.value == true) {
                              Get.toNamed('/edit_book_screen')!.then((value) {
                                MyApp.changeColor(myWhite, Brightness.light);
                              });
                            } else {
                              Get.toNamed('/book_screen')!.then((value) {
                                MyApp.changeColor(myWhite, Brightness.light);
                              });
                            }
                          },
                          child: Text(
                            'ذخیره کردن',
                            textDirection: TextDirection.rtl,
                          ),
                          style: OutlinedButton.styleFrom(
                              // the height is 50, the width is full
                              minimumSize: Size.fromHeight(50)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            isScrollControlled: false,
            backgroundColor: myWhite,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
          );
        },
        backgroundColor: myBlue,
        label: Text(
          'اضافه کردن حساب',
          style: TextStyle(color: myWhite, fontSize: 14),
        ),
        icon: Icon(
          Icons.add,
          color: myWhite,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          Container(
            width: Get.width,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 5, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [Text('100%'), Text('امن')],
                          ),
                          Tab(
                            icon: Image.asset(
                              'assets/images/icons8-security-64.png',
                              width: 40,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'حساب من',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: myGray,
                  height: 0.5,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  padding: EdgeInsets.only(left: 10),
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: myGray),
                    borderRadius: BorderRadius.all(Radius.circular(
                            5) //                 <--- border radius here
                        ),
                  ),
                  child: AnimatedSearchBar(
                    height: 45,
                    label: 'جست وجو با عنوان',
                    labelStyle: TextStyle(
                      color: myGray,
                    ),
                    searchStyle: TextStyle(color: myBlack),
                    searchIcon: Icon(
                      Icons.search,
                      key: ValueKey("search"),
                      color: myBlue,
                      size: 30,
                    ),
                    closeIcon: Icon(
                      Icons.close,
                      key: ValueKey("close"),
                      color: myBlue,
                    ),
                    searchDecoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusColor: myGray,
                        isCollapsed: true),
                    cursorColor: myGray,
                  ),
                ),
              ],
            ),
          ),
          //Header
          //Bottom
          Container(
            width: Get.width,
            height: Get.height * 0.68,
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: GetBuilder(
                  builder: (BookController bookController) {
                    return ListView.separated(
                      itemCount: bookController.cbooks.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            bookController.cbooks[index].balance,
                            style: TextStyle(color: myGreen),
                          ),
                          title: Text(
                            bookController.cbooks[index].title,
                            textAlign: TextAlign.right,
                          ),
                          subtitle: Text(
                            bookController.cbooks[index].description,
                            textAlign: TextAlign.right,
                          ),
                          onTap: () {
                            Get.toNamed('edit_book_screen');
                          },
                          trailing: Container(
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: myLighBlue,
                              child: Center(
                                child: Icon(
                                  Icons.file_copy_sharp,
                                  color: myBlue,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8, right: 15),
                          child: Divider(
                            color: myGray,
                            height: 0.5,
                          ),
                        );
                      },
                    );
                  },
                )),
          ),
          //Bottom
        ],
      )),
    );
  }
}
