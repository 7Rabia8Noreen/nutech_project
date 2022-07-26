import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:nutech/pages/academics.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/utils/routes.dart';
import 'package:provider/provider.dart';

import '../components/c_elevated_button.dart';
import 'package:pinput/pinput.dart';

import '../providers/otp_verification_provider.dart';

class OtpPage extends StatelessWidget {
  final Map<String, dynamic> args;
  OtpPage({Key? key, required this.args}) : super(key: key);
  final _otpFormKey = GlobalKey<FormState>();

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
    print(args['message']);
    // final defaultPinTheme = PinTheme(
    //   width: 56,
    //   height: 56,
    //   textStyle: TextStyle(
    //       fontSize: 20,
    //       color: Color.fromRGBO(30, 60, 87, 1),
    //       fontWeight: FontWeight.w600),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    // );

    // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    //   border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
    //   borderRadius: BorderRadius.circular(8),
    // );

    // final submittedPinTheme = defaultPinTheme.copyWith(
    //   decoration: defaultPinTheme.decoration!.copyWith(
    //     color: Color.fromRGBO(234, 239, 243, 1),
    //   ),
    // );

    final defaultPinTheme = PinTheme(
      width: 60.w,
      height: 60.h,
      textStyle: TextStyle(
        fontSize: 24.sp,
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: Theme.of(context).colorScheme.secondary,
        width: 3,
      ),
      borderRadius: BorderRadius.circular(10.r),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
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
                            child: Text(args['message'],
                                style: Theme.of(context).textTheme.headline4),
                          ),
                          SizedBox(
                            height: 42.h,
                          ),

                          Form(
                            key: _otpFormKey,
                            child: Consumer<OTPVerificationProvider>(
                              builder: (context, otp, child) => Pinput(
                                androidSmsAutofillMethod:
                                    AndroidSmsAutofillMethod.smsRetrieverApi,
                                defaultPinTheme: defaultPinTheme,
                                focusedPinTheme: focusedPinTheme,
                                submittedPinTheme: submittedPinTheme,
                                validator: (s) {
                                  return otp.otpVerified
                                      ? null
                                      : 'Pin is incorrect';
                                },
                                pinputAutovalidateMode:
                                    PinputAutovalidateMode.onSubmit,
                                showCursor: true,
                                onCompleted: (pin) {
                                  otp.otpVerified = true;
                                  Provider.of<OTPVerificationProvider>(context,
                                          listen: false)
                                      .verifyOTP(_otpFormKey, context,
                                          args['id'], 1, pin);
                                },
                              ),
                            ),
                          ),

                          // Center(
                          //   child: Pinput(
                          //     androidSmsAutofillMethod:
                          //         AndroidSmsAutofillMethod.smsRetrieverApi,
                          //     defaultPinTheme: defaultPinTheme,
                          //     focusedPinTheme: defaultPinTheme,
                          //     submittedPinTheme: defaultPinTheme,
                          //     validator: (s) {
                          //       return s == '1234' ? null : 'Pin is incorrect';
                          //     },
                          //     pinputAutovalidateMode:
                          //         PinputAutovalidateMode.onSubmit,
                          //     showCursor: true,
                          //     onCompleted: (pin) =>
                          //         Logger().e('onCompleted $pin'),
                          //     onSubmitted: (pin) {
                          //       Logger().e('onSubmitted $pin');
                          //     },
                          //   ),
                          // ),

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
