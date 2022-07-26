import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/providers/login_provider.dart';
import 'package:nutech/providers/password_provider.dart';
import 'package:nutech/utils/routes.dart';
import 'package:provider/provider.dart';

import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _globalKeyLoginForm = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitLoginForm(BuildContext context) async {
    bool isValid = _globalKeyLoginForm.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (!isValid) {
      return;
    }
    _globalKeyLoginForm.currentState!.save();
    Provider.of<LoginProvider>(context, listen: false)
        .submitLoginForm(_idController, _passwordController, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 152,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset(
                          'assets/svg/right_personal_info.svg'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Form(
                  key: _globalKeyLoginForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign In',
                          style: Theme.of(context).textTheme.headline1),
                      SizedBox(
                        height: 17.h,
                      ),
                      CTextFormField(
                        testControllor: _idController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        hintText: '13302-1728416212-1',
                        prefixIcon:
                            Image.asset('assets/images/login_finger_icon.png'),
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
                        height: 17.h,
                      ),
                      Consumer<PasswordProvider>(
                        builder: (context, pp, child) {
                          return CTextFormField(
                            testControllor: _passwordController,
                            obscureText: pp.isObscure,
                            textInputAction: TextInputAction.done,
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
                        height: 15.h,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          child: Text('Forgot password?',
                              style: Theme.of(context).textTheme.headline3),
                          onTap: () {
                            Navigator.pushNamed(
                                context, RouteGenerator.forgetPassword);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 81.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: CElevatedButton(
                          onPressed: () => _submitLoginForm(context),
                          child: const Text('SIGN IN'),
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
                              Text('Does not have an account?',
                                  style: Theme.of(context).textTheme.headline4),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteGenerator.signup);
                                },
                                child: Text('Sign Up',
                                    style:
                                        Theme.of(context).textTheme.headline2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
