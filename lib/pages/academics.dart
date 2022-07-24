import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/pages/verify_password.dart';

import '../components/c_dropdown_b.dart';

class Academics extends StatefulWidget {
  Academics({Key? key}) : super(key: key);

  @override
  State<Academics> createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
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
      const DropdownMenuItem<String>(
        child: Text('Sargodha'),
        value: '5',
      ),
      const DropdownMenuItem<String>(
        child: Text('Federal'),
        value: '6',
      ),
      const DropdownMenuItem<String>(
        child: Text('Lahore'),
        value: '7',
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
        child: Text('ENGLISH'),
        value: '3',
      ),
      const DropdownMenuItem<String>(
        child: Text('MATHS'),
        value: '4',
      ),
      const DropdownMenuItem<String>(
        child: Text('MANAGEMENT SCIENCES'),
        value: '5',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    child:
                        SvgPicture.asset('assets/svg/right_personal_info.svg'),
                  ),
                  /*Positioned(
                    top: 0,
                    left: 0,
                    child:
                        SvgPicture.asset('assets/svg/left_personal_info.svg'),
                  ),*/
                ],
              ),
            ),
            SizedBox(
              height: 62.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Academics',
                      style: Theme.of(context).textTheme.headline1),
                  SizedBox(
                    height: 24.h,
                  ),
                  DropdownButtonFormField(
                      //value: _currentOccupationSelectedValue,
                      isExpanded: true,
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Campus',
                        contentPadding: REdgeInsets.all(17),
                      ),
                      items: campusDropdownItems),
                  SizedBox(
                    height: 20.h,
                  ),
                  DropdownButtonFormField(
                      //value: _currentOccupationSelectedValue,
                      isExpanded: true,
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Department',
                        contentPadding: REdgeInsets.all(17),
                      ),
                      items: departmentDropdownItems),
                  SizedBox(
                    height: 161.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => VerifyPassword()));
                      },
                      child: const Text('SEND CODE'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        primary: const Color(0xFF8B010B),
                        padding: EdgeInsets.symmetric(
                            horizontal: 63.w, vertical: 17.h),
                        textStyle: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
