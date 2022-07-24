import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/academics.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/utils/routes.dart';

import '../components/c_elevated_button.dart';
import 'package:pinput/pinput.dart';

class VerifyPassword extends StatefulWidget {
  VerifyPassword({Key? key}) : super(key: key);

  @override
  State<VerifyPassword> createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  final outlineInputBorder = OutlineInputBorder(
      //borderRadius: BorderRadius.circular(1.r),
      borderSide: const BorderSide(color: Colors.transparent, width: 0));

  InputDecoration getInputDecoration(
      {Widget? prefixIcon, Widget? suffixIcon, required String hintText}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 19.w),
      hintText: hintText,
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 204.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 44.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text('Verify',
                                style: Theme.of(context).textTheme.headline1),
                          ),
                          SizedBox(
                            height: 21.h,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                                'We sent code to 034*******1 to verify your account',
                                style: Theme.of(context).textTheme.headline4),
                          ),
                          SizedBox(
                            height: 42.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 48.h,
                                width: 48.w,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: getInputDecoration(
                                    hintText: '2',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 48.h,
                                width: 48.w,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: getInputDecoration(
                                    hintText: '4',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 48.h,
                                width: 48.w,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: getInputDecoration(
                                    hintText: '0',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 48.h,
                                width: 48.w,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  decoration: getInputDecoration(
                                    hintText: '6',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('I did not receive a code!',
                                style: Theme.of(context).textTheme.headline4),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('Re-Send Code',
                                style: Theme.of(context).textTheme.headline6),
                          ),
                          SizedBox(
                            height: 103.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.login);
                        },
                        child: const Text('DONE'),
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
