import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/forgot_password.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/providers/change_password_provider.dart';
import 'package:nutech/utils/helper.dart';
import 'package:provider/provider.dart';

import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';
import '../models/user.dart';
import '../providers/password_provider.dart';
import '../utils/routes.dart';

class ChangePassword extends StatefulWidget {
  //Future<User>? userFromHive;
  ChangePassword({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _globalKeyChangePasswordForm = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  void _submitChangePasswordForm(BuildContext context) async {
    bool isValid = _globalKeyChangePasswordForm.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (!isValid) {
      return;
    }
    //Future<User> user = Helper.getUser();
    _globalKeyChangePasswordForm.currentState!.save();
    Provider.of<ChangePasswordProvider>(context, listen: false)
        .submitChangePasswordForm(
      _currentPasswordController,
      _passwordController,
      _passwordConfirmationController,
      // user.token as String,
      context,
    );
  }

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
                child: Form(
                  key: _globalKeyChangePasswordForm,
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
                      Consumer<PasswordProvider>(
                        builder: (context, pp, child) {
                          return CTextFormField(
                            testControllor: _currentPasswordController,
                            obscureText: pp.isObscure,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            hintText: 'Current Password',
                            prefixIcon:
                                Image.asset('assets/images/password_lock.png'),
                            suffixIcon: IconButton(
                              onPressed: () {
                                pp.toggleIsObscure();
                              },
                              icon: Icon(pp.isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              } else if (value.length < 7) {
                                return 'Please enter at least 8 characters password';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Consumer<PasswordProvider>(
                        builder: (context, pp, child) {
                          return CTextFormField(
                            testControllor: _passwordController,
                            obscureText: pp.isObscure,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            hintText: 'New Password',
                            prefixIcon:
                                Image.asset('assets/images/password_lock.png'),
                            suffixIcon: IconButton(
                              onPressed: () {
                                pp.toggleIsObscure();
                              },
                              icon: Icon(pp.isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              } else if (value.length < 7) {
                                return 'Please enter at least 8 characters password';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Consumer<PasswordProvider>(
                        builder: (context, pp, child) {
                          return CTextFormField(
                            testControllor: _passwordConfirmationController,
                            obscureText: pp.isObscure,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            hintText: 'Confirm New Password',
                            prefixIcon:
                                Image.asset('assets/images/password_lock.png'),
                            suffixIcon: IconButton(
                              onPressed: () {
                                pp.toggleIsObscure();
                              },
                              icon: Icon(pp.isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              } else if (value.length < 7) {
                                return 'Please enter at least 8 characters password';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 102.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: CElevatedButton(
                          onPressed: () {
                            _submitChangePasswordForm(context);
                          },
                          child: const Text('CHANGE PASSWORD'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
