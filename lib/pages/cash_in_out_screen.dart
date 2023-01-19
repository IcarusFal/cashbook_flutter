import 'package:cashbook/controllers/editbook_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class CashInOutScreen extends GetView<EditBookController> {

  @override
  Widget build(BuildContext context) {
    EditBookController bookController = EditBookController();
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
            "درآمد را وارد کنید",
            style: TextStyle(fontSize: 16.0, color: myGreen),
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
      body: SafeArea(
        child: Container(
          color: myWhite,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text('تاریخ'), Text('زمان')],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        // onSaved: (value) => title = value.toString(),
                        autofocus: true,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 0, bottom: 0, right: 15, left: 15),
                          labelText: 'مبلغ',
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    // padding: EdgeInsets.only(right: 5),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: myWhite,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: myGray, width: 0.5),
                      ),
                      child: Obx(() => DropdownButton(
                            hint: Container(
                              margin: EdgeInsets.only(right: 15),
                              child: Text(
                                'کانتکت',
                                style: TextStyle(color: myTextGray),
                              ),
                            ),
                            onChanged: (newValue) {
                              bookController.setContactSelected(newValue!);
                            },
                            value: bookController.contactSelected.value == ""
                                ? null
                                : bookController.contactSelected.value,
                            items:
                                bookController.contactItems.map((selectedType) {
                              return DropdownMenuItem(
                                child: Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Text(
                                    selectedType,
                                  ),
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                            isExpanded: true,
                            underline: Container(), //empty line
                            style: TextStyle(fontSize: 18, color: myBlack),
                            dropdownColor: myWhite,
                            iconEnabledColor: myGrey, //Icon
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 0, bottom: 0, right: 15, left: 15),
                          labelText: 'توضیح',
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
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        side: BorderSide(color: myGray, width: 0.5),
                        backgroundColor: myWhite,
                        padding: EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        // Get.toNamed('/cash_in_out');
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 24.0,
                        color: myBlue,
                      ),
                      label: Text(
                        'اضافه کردن تصویر',
                        style: TextStyle(color: myTextGray),
                      ), // <-- Text
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    // padding: EdgeInsets.only(right: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: myWhite,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: myGray, width: 0.5),
                          ),
                          child: Obx(() => DropdownButton(
                                hint: Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Text(
                                    'دسته',
                                    style: TextStyle(color: myTextGray),
                                  ),
                                ),
                                onChanged: (newValue) {
                                  bookController.setContactSelected(newValue!);
                                },
                                value:
                                    bookController.contactSelected.value == ""
                                        ? null
                                        : bookController.contactSelected.value,
                                items: bookController.contactItems
                                    .map((selectedType) {
                                  return DropdownMenuItem(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        selectedType,
                                      ),
                                    ),
                                    value: selectedType,
                                  );
                                }).toList(),
                                isExpanded: true,
                                underline: Container(), //empty line
                                style: TextStyle(fontSize: 18, color: myBlack),
                                dropdownColor: myWhite,
                                iconEnabledColor: myGrey, //Icon
                              )),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.centerRight,
                            child: Text('شیوه پرداخت')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'نقد',
                                style: TextStyle(color: myWhite),
                              ),
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: myBlue,
                                  width: 0.5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                backgroundColor: myBlue,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'آنلاین',
                                style: TextStyle(color: myBlack),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: backgroundGray,
                                side: BorderSide(
                                  color: backgroundGray,
                                  width: 0.5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: myGray,
                          width: 0.5,
                        ),
                        bottom: BorderSide(
                          color: myGray,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'ذخیره کردن ',
                              style: TextStyle(color: myWhite),
                            ),
                            style: OutlinedButton.styleFrom(
    backgroundColor: myBlue,
    side: BorderSide(width: 0.5, color: myBlue),
      ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'ذخیره و اضافه کردن مقدار جدید ',
                              style: TextStyle(color: myBlue),
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: myWhite,
                              side: BorderSide(width: 0.5,color: myGrey)
                            ),
                          ),
                        ]),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
