import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/pages/verify_password.dart';
import 'package:nutech/utils/routes.dart';

import '../components/c_dropdown_b.dart';
import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';

class EmployerDetails extends StatefulWidget {
  EmployerDetails({Key? key}) : super(key: key);

  @override
  State<EmployerDetails> createState() => _EmployerDetailsState();
}

class _EmployerDetailsState extends State<EmployerDetails> {
  List<DropdownMenuItem<String>> get employerDropdownItems {
    return [
      const DropdownMenuItem<String>(
        child: Text('Excellent'),
        value: '1',
      ),
      const DropdownMenuItem<String>(
        child: Text('Good'),
        value: '2',
      ),
      const DropdownMenuItem<String>(
        child: Text('Very Good'),
        value: '3',
      ),
      const DropdownMenuItem<String>(
        child: Text('Bad'),
        value: '3',
      ),
      const DropdownMenuItem<String>(
        child: Text('Very Bad'),
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
                    Text('Employer Details',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 23.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: 'Name.',
                      prefixIcon: const Icon(Icons.person),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: 'Contact No.',
                      prefixIcon: const Icon(Icons.wifi_calling_3_outlined),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: 'District Where Employed',
                      prefixIcon: const Icon(Icons.document_scanner_sharp),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    CDropdownButtonFormField(
                        // value: _currentOccupationSelectedValue,
                        isExpanded: true,
                        onChanged: (value) {
                          print(value);
                        },
                        hintText: 'Employer Satisfaction',
                        prefixIcon: Icon(Icons.person_pin_circle),
                        items: employerDropdownItems),
                    SizedBox(
                      height: 100.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.verifyPassword);
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
