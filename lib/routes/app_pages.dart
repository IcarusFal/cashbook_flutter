import 'package:cashbook/bindings/bindings.dart';
import 'package:cashbook/pages/add_book_screen.dart';
import 'package:cashbook/pages/cash_in_out_screen.dart';
import 'package:cashbook/pages/dashboard_page.dart';
import 'package:cashbook/pages/edit_book_screen.dart';
// import 'package:cashbook/pages/home_screen.dart';
import 'package:cashbook/routes/app_routes.dart';
import 'package:get/get.dart';

import '../pages/generate_report_screen.dart';


class AppPages{
  static List<GetPage> get pages =>[
    GetPage(name: AppRoutes.DASHBOARD, page: ()=>DashbordPage(),binding: MyBindings()),
    //for navigating outside bottom navigation add screens below
    //ex: GetPage(name: '/home_screen', page:()=> HomeScreen()),
    GetPage(name: '/book_screen', page: ()=>AddBookScreen()),
    GetPage(name: '/edit_book_screen', page: ()=>EditBookScreen()),
    GetPage(name: '/cash_in_out', page: ()=> CashInOutScreen()),
    GetPage(name: '/gen_report_screen', page: ()=>GenerateReportScreen())

  ];
}