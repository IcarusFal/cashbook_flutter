// import 'package:cashbook/models/cbook.dart';
// import 'package:get/get.dart';
// import 'package:hive/hive.dart';

// class BookController extends GetxController {
//   List<CBook> _cbooks=[];

//   late Box<CBook> cbookBox;

//   List<CBook> get cbooks => _cbooks;

//   BookController(){
//     cbookBox = Hive.box<CBook>('Cbooks');
//     _cbooks = [];
//     for(int i = 0; i < cbookBox.values.length+1;i++){
//       _cbooks.add(cbookBox.getAt(i)!);
//     }
//   }

//   addCBook(CBook cbook){
//     _cbooks.add(cbook);
//     update();
//   }

//   deleteCBook(String id){
//     _cbooks.removeWhere((element) => element.id == id);
//     update();
//   }

// }

import 'package:cashbook/models/cbook.dart';
import 'package:get/get.dart';

class BookController extends GetxController {
  List<CBook> _cbooks = [];
  List<CBook> get cbooks => _cbooks;

  RxBool isPrivate = true.obs;

  void setIsPrivate(bool val) {
    isPrivate.value = val;
  }

  CBookController() {
    _cbooks = [];
  }

  addCBook(CBook cbook) {
    _cbooks.add(cbook);
    update();
  }

  deleteCBook(String id) {
    _cbooks.removeWhere((element) => element.id == id);
    update();
  }
}
