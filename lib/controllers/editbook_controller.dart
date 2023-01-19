import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditBookController extends GetxController{
   final contactSelected = "".obs;

  var contactItems = [    
    'contact 2',
    'contact 3',
    'contact 4',
    'contact 5',
  ];
   void setContactSelected(String value){
     contactSelected.value = value;
   }

}