import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect/controllers/userC.dart';
import 'package:getx_connect/routes/route_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference user = firestore.collection('user');
    final userC = Get.find<UserC>();
    return Scaffold(
      appBar: AppBar(
        title: Text('My Diary'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Get.toNamed(AppsPage.create),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        children: [
          StreamBuilder<QuerySnapshot>(
            builder: (_, snapshot) {
              if (snapshot.hasData)
                return Column(
                  children: snapshot.data!.docs
                      .map((e) => ListTile(
                            onTap: () => Get.toNamed(AppsPage.update+'?id=${e.id}&nama=${e['nama']}&email=${e['email']}no=${e['no hp']}'),
                            trailing: IconButton(
                                splashRadius: 10,
                                onPressed: () {
                                  userC.deleteUser(e.id);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.black,
                                )),
                            tileColor: Colors.white,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            title: Text('Nama: ${e['nama']}',
                                style: TextStyle(color: Colors.black)),
                          ))
                      .toList(),
                );
              else
                return Text('no data');
            },
            stream: user.orderBy('nama').snapshots(),
          )
        ],
      ),
    );
  }
}
