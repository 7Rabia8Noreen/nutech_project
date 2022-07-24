import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/login_page.dart';
import 'package:intl/intl.dart';
import 'package:nutech/pages/show_qualification.dart';
import 'package:nutech/providers/date_provider.dart';
import 'package:nutech/utils/routes.dart';
import 'package:provider/provider.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';

class Qualification extends StatefulWidget {
  Qualification({Key? key}) : super(key: key);

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
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
      hintStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
    );
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

  List<DropdownMenuItem<String>> get qualificationDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Master'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('BS'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('Intermediate'),
        value: '3',
      ),
    ];
  }

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

  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

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
                child:
                    SvgPicture.asset('assets/svg/left_personal_info.svg'),
              ),*/

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 141.h,
                    ),
                    Text('Qualification',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 22.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Qualification Level',
                        prefixIcon:
                            Image.asset('assets/images/qualification.png'),
                        items: qualificationDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      hintText: 'Degree Title',
                      prefixIcon: RPadding(
                        padding: REdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          'assets/svg/degree_icon.svg',
                        ),
                      ),

                      //Image.asset('assets/images/degree_title.png'),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Obtained Marks/CGPA',
                      prefixIcon:
                          Image.asset('assets/images/obtained_marks.png'),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    CTextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      hintText: 'Total Marks/CGPA',
                      prefixIcon: Image.asset('assets/images/total_marks.png'),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Consumer<DateProvider>(
                      builder: (context, dp, child) {
                        return CTextFormField(
                          testControllor: dateinput,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          hintText: 'Passing Year',
                          prefixIcon: Image.asset(
                              'assets/images/prefix_birth_icon.png'),
                          suffixIcon: Image.asset(
                              'assets/images/suffix_birth_icon.png'),
                          // enabled: false,
                          onTap: () {
                            dp.pickDateDialog(context, dateinput);
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Board/University',
                        prefixIcon:
                            Image.asset('assets/images/university_icon.png'),
                        items: campusDropdownItems),
                    SizedBox(
                      height: 56.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.showQualification);
                        },
                        child: const Text('SAVE'),
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
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
