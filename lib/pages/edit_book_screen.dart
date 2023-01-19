import 'package:cashbook/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/editbook_controller.dart';

class EditBookScreen extends GetView<EditBookController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.group_add_rounded),
              color: myBlue,
              iconSize: 21,
              style: IconButton.styleFrom(
                  padding: EdgeInsets.zero, minimumSize: Size.zero),
              onPressed: () {},
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.picture_as_pdf_rounded),
                  color: myBlue,
                  iconSize: 21,
                  style: IconButton.styleFrom(
                      padding: EdgeInsets.zero, minimumSize: Size.zero),
                  onPressed: () {
                    Get.toNamed('gen_report_screen');
                  },
                ),
                Positioned(
                  top: 12.0,
                  right: 10.0,
                  width: 10.0,
                  height: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'نام حساب',
                          style: TextStyle(fontSize: 16, color: myBlack),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                            ),
                            onPressed: () {},
                            child: Text('برای رفتن به تنظیمات حساب کلیک کنید',
                                style:
                                    TextStyle(fontSize: 12.0, color: myGrey)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: myWhite,
        actions: [
          IconButton(
            iconSize: 21,
            style: IconButton.styleFrom(
                padding: EdgeInsets.zero, minimumSize: Size.zero),
            icon: Icon(Icons.arrow_forward, color: myBlack),
            onPressed: () => Get.back(),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: backgroundGray,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                  margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  color: myWhite,
                  child: Column(children: [
                    ListTile(
                      title: Text('موجودی',
                          style: TextStyle(
                              color: myBlack, fontWeight: FontWeight.bold)),
                      trailing: Text(
                        '0',
                        style: TextStyle(
                            color: myBlack, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      height: 0.5,
                      color: backgroundGray,
                    ),
                    ListTile(
                      title: Text('مجموع واریز'),
                      trailing: Text(
                        '0',
                        style: TextStyle(
                            color: myGreen, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Text('مجموع برداشت'),
                      trailing: Text(
                        '0',
                        style: TextStyle(
                            color: myRed, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      height: 0.5,
                      color: backgroundGray,
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          // <-- Icon
                          Icons.chevron_left,
                          size: 24.0,
                        ),
                        label: Text('مشاهده گزارش'), // <-- Text
                      ),
                    ),
                  ]),
                ),
                Container(
                  color: myWhite,
                  margin: EdgeInsets.only(top: 50, right: 20, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: myGreen,
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'فقط شما می‌توانید این ورودی ها را ببینید.',
                        style: TextStyle(color: myBlack),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  width: Get.width,
                  // height: 200,
                  color: myWhite,
                  child: Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        'اولین مقدار را وارد کنید',
                        style: TextStyle(
                            color: myBlack, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Icon(
                        Icons.arrow_downward_rounded,
                        color: myBlue,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(
                        children: [
                          Text('هزینه'),
                          SizedBox(height: 10,),
                          Directionality(
                      textDirection: TextDirection.ltr,
                      child: TextButton.icon(
                         style: TextButton.styleFrom(
                          backgroundColor: myRed
                        ),
                        onPressed: () {
                          Get.toNamed('/cash_in_out');
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 24.0,
                          color: myWhite,
                        ),
                        label: Text('خروجی',style: TextStyle(color: myWhite),), // <-- Text
                      ),
                    ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('درآمد'),
                          SizedBox(height: 10,),
                          Directionality(
                      textDirection: TextDirection.ltr,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: myGreen
                        ),
                        onPressed: () {
                          Get.toNamed('/cash_in_out');
                        },
                        icon: Icon(
                          Icons.add,
                          size: 24.0,
                          color: myWhite,
                        ),
                        label: Text('ورودی',style: TextStyle(color: myWhite),), // <-- Text
                      ),
                    ),
                        ],
                      ),
                    ],),
                    SizedBox(height: 20,)
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
