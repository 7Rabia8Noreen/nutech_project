import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/pages/otp_page.dart';
import 'package:nutech/utils/constants.dart';
import 'package:nutech/utils/routes.dart';
import 'package:provider/provider.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';
import '../providers/disability_provider.dart';

class AddAlumniDetails extends StatefulWidget {
  AddAlumniDetails({Key? key}) : super(key: key);

  @override
  State<AddAlumniDetails> createState() => _AddAlumniDetailsState();
}

class _AddAlumniDetailsState extends State<AddAlumniDetails> {
  List<DropdownMenuItem<String>> get qualificationDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('MCS'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('BSCS'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('BSAI'),
        value: '3',
      ),
    ];
  }

  List<DropdownMenuItem<String>> get instituteDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('NUML'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('NUTECH'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('FAST'),
        value: '3',
      ),
    ];
  }

  List<DropdownMenuItem<String>> get courseDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('CS'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('AI'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('FE'),
        value: '3',
      ),
    ];
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 141.h,
                    ),
                    Text('Alumni',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 23.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Mobile',
                      prefixIcon: const Icon(Icons.wifi_calling_3_outlined),
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
                        hintText: 'Course/trade',
                        prefixIcon: Icon(Icons.document_scanner_outlined),
                        items: qualificationDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Institute',
                        prefixIcon: Icon(Icons.home_filled),
                        items: instituteDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Employment Relavant To Course',
                        prefixIcon: Icon(Icons.document_scanner_outlined),
                        items: courseDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    Consumer<DisabilityProvider>(
                      builder: (context, dp, child) {
                        return CheckboxListTile(
                          value: dp.value,
                          onChanged: (bool? checked) {
                            dp.checkedValue();
                          },
                          title: const Text(
                            'Further Studies',
                            style: TextStyle(
                              color: Color(0xFF444444),
                            ),
                          ),
                          secondary: const Icon(Icons.grade_outlined),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorder,
                          activeColor: Theme.of(context).colorScheme.primary,
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
                        hintText: 'Employment Status',
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        items: courseDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Employment Type',
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        items: courseDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Overseas Employment',
                        prefixIcon: Icon(Icons.grid_goldenratio),
                        items: courseDropdownItems),
                    SizedBox(
                      height: 22.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Designation',
                      prefixIcon: const Icon(Icons.wifi_calling_3_outlined),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      hintText: 'Monthly Income/Salary',
                      prefixIcon: const Icon(Icons.girl_outlined),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Consumer<DisabilityProvider>(
                      builder: (context, dp, child) {
                        return CheckboxListTile(
                          value: dp.value,
                          onChanged: (bool? checked) {
                            dp.checkedValue();
                          },
                          title: Text(
                            'Contribution To Household',
                            style: TextStyle(
                                color: Color(0xFF444444),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          secondary: const Icon(Icons.grade_outlined),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorder,
                          activeColor: Theme.of(context).colorScheme.primary,
                        );
                      },
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          // Navigator.pushNamed(
                          //     context, RouteGenerator.verifyPassword);
                        },
                        child: const Text('SUBMIT'),
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
