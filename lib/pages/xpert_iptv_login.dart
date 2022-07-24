import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XpertIptvLogin extends StatefulWidget {
  XpertIptvLogin({Key? key}) : super(key: key);

  @override
  State<XpertIptvLogin> createState() => _XpertIptvLoginState();
}

class _XpertIptvLoginState extends State<XpertIptvLogin> {
  final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(color: Colors.transparent, width: 0));

  InputDecoration getInputDecoration(
      {required Widget prefixIcon,
      Widget? suffixIcon,
      required String hintText}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      contentPadding: EdgeInsets.symmetric(vertical: 20.h),
      filled: true,
      fillColor: const Color(0xFFE9E9E9),
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              SizedBox(
                height: 296.h,
                width: 296.w,
                child: Image.asset('assets/images/logo.jpg'),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: getInputDecoration(
                  hintText: 'Type email here',
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: getInputDecoration(
                  hintText: '********',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Colors.transparent, width: 0),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    backgroundColor: const Color(0xFFFCC50A),
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    textStyle:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color(0xff151624),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
