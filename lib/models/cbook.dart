// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:hive/hive.dart';
// import 'package:uuid/uuid.dart';

// part 'cbook.g.dart';

// @HiveType(typeId: 0)
// class CBook extends HiveObject {
//   @HiveField(1)
//   String id;
//   @HiveField(2)
//   String title;
//   @HiveField(3)
//   String description;
//   @HiveField(4)
//   bool isActive;
//   @HiveField(5)
//   bool isPrivate;
//   @HiveField(6)
//   bool isSynced;
//   @HiveField(7)
//   int balance;
//   CBook({required this.title})
//       : this.description='',
//       this.id = Uuid().v1(),
//         this.isActive = false,
//         this.isPrivate = true,
//         this.isSynced = false,
//         this.balance = 0;
// }

import 'package:uuid/uuid.dart';

class CBook{
  String id;
  String title;
  String description;
  bool isActive;
  bool isPrivate;
  bool isSynced;
  String balance;

  CBook({this.title='-1',this.isPrivate=true}):
  
  this.id = Uuid().v1(),
  this.description = '',
  this.isActive=false,
  this.isSynced=false,
  this.balance='0';


}