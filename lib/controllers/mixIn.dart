// import 'package:get/get.dart';
// import 'package:getx_connect/providers/usersP.dart';

// class MixIn extends GetxController with StateMixin<Map<String, dynamic>> {
//   void getData() {
//     try {
//       UserProvider().getUser().then(
//         (value) {
//           if (value.statusCode == 200) {
//             final data = value.body['data'] as Map<String, dynamic>;
//             change(data, status: RxStatus.success());
//           }
//         },
//         onError: (error) {
//           change(null, status: RxStatus.error(error));
//         },
//       );
//     } catch (e) {
//       change(null, status: RxStatus.error(e.toString()));
//     }
//   }
// }
