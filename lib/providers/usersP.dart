import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  
  final url = 'https://crud-b6bdb-default-rtdb.asia-southeast1.firebasedatabase.app/';
  Future<Response> getUser() => get(url + 'users.json');

  Future<Response> postUser(String nama, String email, String no) {
    final body = json.encode(
      {
        'nama' : nama,
        'email' : email,
        'no hp' : no,
      }
    );
    return post(url + 'users.json', body);
  }
}