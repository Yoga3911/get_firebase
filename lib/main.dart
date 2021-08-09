import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect/routes/route_name.dart';
import 'package:getx_connect/routes/route_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: MyRoute.pages,
        initialRoute: AppsPage.home,
        title: 'My Diary',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        );
  }
}
