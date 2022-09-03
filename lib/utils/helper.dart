import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../models/user.dart';

class Helper {
  static String token = '';
  static void showSnackBar(
      {required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static void addUser(user) async {
    token = user.token;
    var box = await Hive.openBox('hiveBox');
    box.put('user', user);
  }

  static Future<User> getUser() async {
    var box = await Hive.openBox('hiveBox');
    return box.get('user');
  }

  static void deleteUser() async {
    var box = await Hive.openBox('hiveBox');
    box.delete('user');
  }

  static Future<bool> isLoggedIn() async {
    var box = await Hive.openBox('hiveBox');
    return box.containsKey('user');
  }

  static void moveToNextScreen(BuildContext context, String path) {
    Navigator.of(context).pushNamed(path);
  }
}
