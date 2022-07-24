import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/forgot_password.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';

import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';
import '../utils/routes.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset('assets/svg/right_personal_info.svg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 198.h,
                    ),
                    Text('Reset Password',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 23.h,
                    ),
                    CTextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      //obscureText: IsObscureText,
                      keyboardType: TextInputType.text,
                      hintText: 'Old Password',
                      prefixIcon:
                          Image.asset('assets/images/password_lock.png'),
                      suffixIcon: Image.asset('assets/images/password_eye.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      //obscureText: IsObscureText,
                      keyboardType: TextInputType.text,
                      hintText: 'New Password',
                      prefixIcon:
                          Image.asset('assets/images/password_lock.png'),
                      suffixIcon: Image.asset('assets/images/password_eye.png'),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CTextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      //obscureText: IsObscureText,
                      keyboardType: TextInputType.text,
                      hintText: 'Confirm New Password',
                      prefixIcon:
                          Image.asset('assets/images/password_lock.png'),
                      suffixIcon: Image.asset('assets/images/password_eye.png'),
                    ),
                    SizedBox(
                      height: 102.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RouteGenerator.login);
                        },
                        child: const Text('RESET PASSWORD'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
