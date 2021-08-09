import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect/controllers/txtC.dart';
import 'package:getx_connect/controllers/userC.dart';
import 'package:getx_connect/routes/route_name.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtC = Get.find<TxtC>();
    final userC = Get.find<UserC>();
    final id = Get.parameters;
    if (txtC.getNama.text.isEmpty) {
      txtC.getNama = TextEditingController(text: id['nama'].toString());
      txtC.getEmail = TextEditingController(text: id['email'].toString());
      txtC.getNo = TextEditingController(text: id['no'].toString());
    } else {
      txtC.getNama = txtC.getNama;
      txtC.getEmail = txtC.getEmail;
      txtC.getNo = txtC.getNo;
    }
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit User'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              textField('Nama', txtC.getNama),
              textField('Email', txtC.getEmail),
              textField('No HP', txtC.getNo),
              FloatingActionButton.extended(
                  onPressed: () {
                    Get.defaultDialog(
                        barrierDismissible: false,
                        middleText:
                            'Apakah anda yakin ingin mengubah user ini?',
                        title: 'Perhatian',
                        textConfirm: 'Yakin',
                        onConfirm: () {
                          userC.editUser(id['id'], txtC.getNama.text,
                              txtC.getEmail.text, txtC.getNo.text);

                          Get.offAllNamed(AppsPage.home);
                        },
                        textCancel: 'Batal');
                  },
                  label: Text('Edit'))
            ],
          ),
        ),
      ),
    );
  }

  TextField textField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
