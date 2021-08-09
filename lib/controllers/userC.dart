import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference user = firestore.collection('user');

class UserC extends GetxController {

  void addUser(String nama, String email, String no) {
    user.add({'nama': nama, 'email': email, 'no hp': no});
  }

  void editUser(dynamic id, String nama, String email, String no) {
    user.doc(id).update({'nama': nama, 'email': email, 'no hp': no});
  }

  void deleteUser(dynamic id) {
    Get.defaultDialog(
        title: 'Delete',
        middleText: 'Apakah anda yakin?',
        textConfirm: 'Yakin',
        onConfirm: () {
          user.doc(id).delete();
          Get.back();
        },
        textCancel: 'Batal');
  }
}
