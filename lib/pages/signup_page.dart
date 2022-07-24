import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/components/c_text_form_field.dart';
import 'package:nutech/pages/login_page.dart';
import 'package:nutech/utils/routes.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _testControllor = TextEditingController();
  //final String _hintText = 'Type name here';

  List<DropdownMenuItem<String>> get campusDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('NUTECH'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('NUML'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('FAST'),
        value: '3',
      ),
      const DropdownMenuItem<String>(
        child: Text('ARID'),
        value: '4',
      ),
    ];
  }

  List<DropdownMenuItem<String>> get departmentDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('CS'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('SE'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('MATHS'),
        value: '3',
      ),
      const DropdownMenuItem<String>(
        child: Text('ENGLISH'),
        value: '4',
      ),
    ];
  }

  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  final _campus = [
    "NUTECH",
    "NUML",
    "FAST",
    "ARID",
  ];
  final _department = [
    "MCS",
    "BSCS",
    "BSSE",
    "BSAI",
  ];
  String? _currentCampusSelectedValue = "NUTECH";
  String? _currentDepartmentSelectedValue = "MCS";

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
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            //padding: EdgeInsets.only(top: 100.h),
            child: SafeArea(
              child: SingleChildScrollView(
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
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: '13302-1728416212-1',
                      prefixIcon:
                          Image.asset('assets/images/signup_finger_icon.png'),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      hintText: 'Full Name',
                      prefixIcon: Image.asset('assets/images/full_name.png'),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Phone Number',
                      prefixIcon: Image.asset('assets/images/phone_number.png'),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CTextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      hintText: 'Password',
                      prefixIcon:
                          Image.asset('assets/images/password_lock.png'),
                      suffixIcon: Image.asset('assets/images/password_eye.png'),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CTextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      hintText: 'Confirm Password',
                      prefixIcon:
                          Image.asset('assets/images/password_lock.png'),
                      suffixIcon: Image.asset('assets/images/password_eye.png'),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Please select campus',
                        prefixIcon: Image.asset('assets/images/campus.png'),
                        items: campusDropdownItems),
                    SizedBox(
                      height: 19.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        hintText: 'Please select department',
                        prefixIcon: Image.asset('assets/images/home.png'),
                        onChanged: (value) {
                          print(value);
                        },
                        items: departmentDropdownItems),
                    SizedBox(
                      height: 19.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.login);
                        },
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
                                    context, RouteGenerator.signup);
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
        ],
      ),
    );
  }
}
