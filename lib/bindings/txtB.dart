import 'package:get/get.dart';
import 'package:getx_connect/controllers/txtC.dart';
import 'package:getx_connect/controllers/userC.dart';

class TxtUserB extends Bindings {
  @override
  void dependencies() {
    Get.put(TxtC());
    Get.put(UserC());
  }
}
