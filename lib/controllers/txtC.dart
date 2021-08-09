import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TxtC extends GetxController {

  late TextEditingController getId;
  late TextEditingController getNama;
  late TextEditingController getEmail;
  late TextEditingController getNo;

  @override
  void onInit() {
    super.onInit();
    getId = TextEditingController();
    getNama = TextEditingController();
    getEmail = TextEditingController();
    getNo = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    getId.dispose();
    getNama.dispose();
    getEmail.dispose();
    getNo.dispose();
  }
}