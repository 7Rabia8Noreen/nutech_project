import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nutech/pages/login_page.dart';
import 'package:nutech/pages/otp_page.dart';
import 'package:nutech/utils/helper.dart';

import '../errors/exceptions.dart';

import '../networks/network_client.dart';

class ChangePasswordProvider with ChangeNotifier {
  // ApiService apiService = ApiService(networkClient: NetworkClient());
  NetworkClient networkClient = NetworkClient();
  // Map<String, dynamic> mp = {};

  Future<void> submitChangePasswordForm(
      final currentPasswordController,
      final passwordController,
      final passwordConfirmationController,
      //String token,
      BuildContext context) async {
    try {
      final res = await networkClient.post(
          '/change-password',
          {
            'current_password': currentPasswordController.text.trim(),
            'password': passwordController.text.trim(),
            'password_confirmation': passwordConfirmationController.text.trim(),
          },
          token: Helper.token);
      Logger().i(res.toString());
      Map<String, dynamic> mp = jsonDecode(res.toString());
      if (mp['success']) {
        //idController.clear();

        currentPasswordController.clear();
        passwordController.clear();
        passwordConfirmationController.clear();

        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text('Signup successfully'), backgroundColor: Colors.red));

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => LoginPage(),
          ),
        );
      }
    } on RemoteException catch (e) {
      Logger().e(e.dioError);
    }
    //return mp['success'];
  }
}
