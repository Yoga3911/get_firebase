import 'package:get/get.dart';
import 'package:getx_connect/controllers/userC.dart';

class AddUserB extends Bindings {
  @override
  void dependencies() {
    Get.put(UserC());
  }
}
