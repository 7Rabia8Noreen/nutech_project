import 'package:flutter/material.dart';
import 'package:nutech/pages/forgot_password.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/pages/reset_password.dart';
import 'package:nutech/pages/show_profile.dart';
import 'package:nutech/pages/show_qualification.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/pages/verify_password.dart';

import '../errors/exceptions.dart';
import '../pages/login_page.dart';
//import '../pages/profile_page.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String personalInformation = 'personalInformation';
  static const String qualification = 'qualification';
  static const String showQualification = 'showQualification';
  static const String resetPassword = 'resetPassword';
  static const String forgetPassword = 'forgetPassword';
  static const String verifyPassword = 'verifyPassword';
  static const String showProfile = 'showProfile';
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case personalInformation:
        return MaterialPageRoute(builder: (_) => PersonalInformation());
      case qualification:
        return MaterialPageRoute(builder: (_) => Qualification());
      case showQualification:
        return MaterialPageRoute(builder: (_) => ShowQualification());
      case resetPassword:
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case forgetPassword:
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case verifyPassword:
        return MaterialPageRoute(builder: (_) => VerifyPassword());
      case showProfile:
        return MaterialPageRoute(builder: (_) => ShowProfile());
      default:
        throw RouteException('Route not found');
    }
  }
}
