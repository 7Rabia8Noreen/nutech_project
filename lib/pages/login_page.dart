import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/utils/routes.dart';

import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign In',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 17.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: '13302-1728416212-1',
                      prefixIcon:
                          Image.asset('assets/images/login_finger_icon.png'),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    CTextFormField(
                        obscureText: obscureText,
                        textInputAction: TextInputAction.done,
                        //obscureText: IsObscureText,
                        keyboardType: TextInputType.text,
                        hintText: 'Password',
                        prefixIcon:
                            Image.asset('assets/images/password_lock.png'),
                        //suffixIcon: Image.asset('assets/images/password_eye.png'),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(obscureText
                                ? Icons.visibility
                                : Icons.visibility_off))),
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
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.personalInformation);
                        },
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
                                  style: Theme.of(context).textTheme.headline2),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
