import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nutech/pages/login_page.dart';
import 'package:nutech/pages/otp_page.dart';

import '../errors/exceptions.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';
import '../utils/helper.dart';

class LogoutProvider with ChangeNotifier {
  // ApiService apiService = ApiService(networkClient: NetworkClient());
  NetworkClient networkClient = NetworkClient();
  // Map<String, dynamic> mp = {};

  Future<void> logout(BuildContext context) async {
    try {
      final res = await networkClient.get('/logout', {}, token: Helper.token);
      Logger().i(res.toString());
      Map<String, dynamic> mp = jsonDecode(res.toString());
      if (mp['success']) {
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text('Signup successfully'), backgroundColor: Colors.red));
        Helper.deleteUser();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
        );
      }
    } on RemoteException catch (e) {
      Logger().e(e.dioError);
    }
    //return mp['success'];
  }
}
