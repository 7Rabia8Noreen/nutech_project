import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/components/c_text_form_field.dart';
import 'package:nutech/models/signup_class.dart';
import 'package:nutech/providers/password_provider.dart';
import 'package:nutech/providers/signup_provider.dart';
import 'package:nutech/utils/routes.dart';
import 'package:provider/provider.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';
import '../networks/api_service.dart';
import '../networks/network_client.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _testControllor = TextEditingController();

  final _globalKeySignupForm = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _shortNameController = TextEditingController();
  final _contactNoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  void _submitSignupForm(BuildContext context) async {
    bool isValid = _globalKeySignupForm.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (!isValid) {
      return;
    }
    _globalKeySignupForm.currentState!.save();
    Provider.of<SignupProvider>(context, listen: false).submitSignupForm(
        _idController,
        _nameController,
        _shortNameController,
        _contactNoController,
        _passwordController,
        _passwordConfirmationController,
        context);
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
          /*Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset('assets/svg/left_personal_info.svg'),
          ),*/

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            //padding: EdgeInsets.only(top: 100.h),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _globalKeySignupForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 122.h,
                      ),
                      Text('Sign Up',
                          style: Theme.of(context).textTheme.headline1),
                      SizedBox(
                        height: 19.h,
                      ),
                      CTextFormField(
                        testControllor: _idController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        hintText: '13302-1728416212-1',
                        prefixIcon:
                            Image.asset('assets/images/signup_finger_icon.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter cnic no';
                          } else if (!RegExp(r'^(\d{13})$').hasMatch(value)) {
                            return 'Please enter 13 digits valid cnic no';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      CTextFormField(
                        testControllor: _nameController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        hintText: 'Full Name',
                        prefixIcon: Image.asset('assets/images/full_name.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter full name';
                          } else if (!RegExp(r'^[a-zA-Z]+(?:\s[a-zA-Z]+)+$')
                              .hasMatch(value)) {
                            return 'Please enter valid full name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      CTextFormField(
                        testControllor: _shortNameController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        hintText: 'Short Name',
                        prefixIcon: Image.asset('assets/images/full_name.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter short name';
                          } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                            return 'Please enter valid short name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      CTextFormField(
                        testControllor: _contactNoController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        hintText: 'Phone Number',
                        prefixIcon:
                            Image.asset('assets/images/phone_number.png'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter mobile no';
                          } else if (!RegExp(r'^[03][0-9]{10,}$')
                              .hasMatch(value)) {
                            return 'Please enter valid mobile no';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Consumer<PasswordProvider>(
                        builder: (context, pp, child) {
                          return CTextFormField(
                            testControllor: _passwordController,
                            obscureText: pp.isObscure,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            hintText: 'Password',
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
                        height: 19.h,
                      ),
                      Consumer<PasswordProvider>(
                        builder: (context, pp, child) {
                          return CTextFormField(
                            testControllor: _passwordConfirmationController,
                            obscureText: pp.isObscure,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.text,
                            hintText: 'Confirm Password',
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
                                return 'Please re-enter password';
                              } else if (value.length < 7) {
                                return 'Please re-enter at least 8 characters password';
                              }
                              return null;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: CElevatedButton(
                          onPressed: () => _submitSignupForm(context),
                          child: const Text('SIGN UP'),
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Red Hat Display',
                                  color: const Color(0xFF444444),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteGenerator.login);
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF8B010B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
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
