// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_connect/controllers/mixIn.dart';

// class MixInPage extends GetView<MixIn> {
//   const MixInPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             controller.getData();
//           },
//           child: Icon(Icons.get_app)),
//       body: Center(
//         child: controller.obx((state) => Image.network('${state!['avatar']}')),
//       ),
//     );
//   }
// }
