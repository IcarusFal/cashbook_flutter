import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:cashbook/controllers/home_screen_controller.dart';
import 'package:cashbook/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class HomeScreen extends GetView<HomeController> {
  void openBottomSheet() {
    Get.bottomSheet(
      
      Expanded(
        child: Container(
          height: 300,
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
                padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: myBlue,
                            width: 0.5,
                          ),
                          textStyle: TextStyle(color: myBlue),
                          backgroundColor: myLighBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {},
                        label: Text('حساب عمومی',
                            textDirection: TextDirection.rtl),
                        icon: Icon(
                          Icons.group,
                          color: myBlue,
                        ),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: myGrey,
                            width: 0.5,
                          ),
                          backgroundColor: backgroundGray,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {},
                        label: Text(
                          'حساب خصوصی',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(color: myGrey),
                        ),
                        icon: Icon(
                          Icons.file_copy,
                          color: myGray,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
             SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: OutlinedButton(
                  onPressed: () {
                    Get.toNamed('/book_screen')!.then((value) {
          MyApp.changeColor(myBlue, Brightness.light);
        });
                  },
                  child: const Text('ذخیره کردن',textDirection: TextDirection.rtl,),
                  style: OutlinedButton.styleFrom(
                    // the height is 50, the width is full
                    minimumSize: const Size.fromHeight(50)),
                ),
              ),
            ],
          ),
        ),
      ),
      // isScrollControlled = true,
      isScrollControlled: true,
      backgroundColor: myWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(myBlue, Brightness.light);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          openBottomSheet();
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
          HomePageHeaderWidget(),
          HomePageBottomWidget(),
        ],
      )),
    );
  }
}

class HomePageBottomWidget extends StatelessWidget {
  const HomePageBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.68,
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 5),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  '0',
                  style: TextStyle(color: myGreen),
                ),
                title: Text(
                  'عنوان',
                  textAlign: TextAlign.right,
                ),
                subtitle: Text(
                  '2عنوان',
                  textAlign: TextAlign.right,
                ),
                onTap: () {},
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
            itemCount: 10),
      ),
    );
  }
}

class HomePageHeaderWidget extends StatelessWidget {
  const HomePageHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              borderRadius: BorderRadius.all(
                  Radius.circular(5) //                 <--- border radius here
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
    );
  }
}
