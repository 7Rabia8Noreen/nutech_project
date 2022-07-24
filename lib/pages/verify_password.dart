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
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
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
                                'Pin Code submittied to 03********* number',
                                style: Theme.of(context).textTheme.headline4),
                          ),
                          SizedBox(
                            height: 42.h,
                          ),
                          Center(
                            child: Pinput(
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: defaultPinTheme,
                              submittedPinTheme: defaultPinTheme,
                              validator: (s) {
                                return s == '1234' ? null : 'Pin is incorrect';
                              },
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              onCompleted: (pin) => print(pin),
                            ),
                          ),

                          /*Row(
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
                          ),*/
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
