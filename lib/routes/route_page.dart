import 'package:get/get.dart';
import 'package:getx_connect/bindings/txtB.dart';
import 'package:getx_connect/bindings/userB.dart';
import 'package:getx_connect/routes/route_name.dart';
import 'package:getx_connect/view/add_page.dart';
import 'package:getx_connect/view/edit_page.dart';
import 'package:getx_connect/view/home_page.dart';

class MyRoute {
  static final pages = [
    GetPage(name: AppsPage.home, page: () => HomePage(), binding: AddUserB()),
    GetPage(name: AppsPage.create, page: () => AddPage(), binding: TxtUserB()),
    GetPage(name: AppsPage.update, page: () => EditPage(), binding: TxtUserB())
  ];
}
