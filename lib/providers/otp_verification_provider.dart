import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../models/user.dart';
import '../networks/network_client.dart';
import '../utils/routes.dart';

class OTPVerificationProvider with ChangeNotifier {
  NetworkClient networkClient = NetworkClient();
  bool otpVerified = true;

  Future<void> verifyOTP(
    final otpFormKey,
    BuildContext context,
    final id,
    final pinType,
    final pin,
  ) async {
    final res = await networkClient.post(
      '/verify-contact-no',
      {
        'id': id,
        'pin_type': pinType,
        'pin': int.parse(pin),
      },
    );
    Logger().i('near to verify');
    Map<String, dynamic> mp = jsonDecode(res.toString());
    Logger().i('api responed');
    if (mp['success']) {
      User user = User.fromJson(mp['data']);
      Logger().i('Testttttttttttt ${user.roles}');
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(
        context,
        RouteGenerator.home,
      );
    } else {
      otpVerified = false;
      otpFormKey.currentState!.validate();
    }
  }
}
