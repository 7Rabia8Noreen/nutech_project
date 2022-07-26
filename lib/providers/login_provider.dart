import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nutech/pages/otp_page.dart';

import '../errors/exceptions.dart';
import '../models/user.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';
import '../utils/routes.dart';

class LoginProvider with ChangeNotifier {
  // ApiService apiService = ApiService(networkClient: NetworkClient());
  NetworkClient networkClient = NetworkClient();
  // Map<String, dynamic> mp = {};

  Future<void> submitLoginForm(final idController, final passwordController,
      BuildContext context) async {
    try {
      final res = await networkClient.post('/login', {
        'id': idController.text,
        'password': passwordController.text.trim(),
      });
      Logger().i(res.toString());
      Map<String, dynamic> mp = jsonDecode(res.toString());
      if (mp['success']) {
        //idController.clear();
        passwordController.clear();

        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text('Signup successfully'), backgroundColor: Colors.red));

        User user = User.fromJson(mp['data']);
        Logger().i('Testttttttttttt ${user.roles}');
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(
          context,
          RouteGenerator.home,
        );
      }
    } on RemoteException catch (e) {
      Logger().e(e.dioError);
    }
    //return mp['success'];
  }
}
