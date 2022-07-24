import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/signup_page.dart';
import 'package:nutech/pages/verify_password.dart';
import 'package:nutech/utils/routes.dart';

import '../components/c_elevated_button.dart';
import '../components/c_text_form_field.dart';

class AlumniCNIC extends StatefulWidget {
  AlumniCNIC({Key? key}) : super(key: key);

  @override
  State<AlumniCNIC> createState() => _AlumniCNICState();
}

class _AlumniCNICState extends State<AlumniCNIC> {
  @override
  Widget build(BuildContext context) {
    // TickerProvider? vsync;
    //TabController? controller;
    return Scaffold(
      /* appBar: new AppBar(
        backgroundColor: Colors.grey,
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.arrow_forward)),
            new Tab(icon: new Icon(Icons.arrow_downward)),
            new Tab(icon: new Icon(Icons.arrow_back)),
          ],
        ),
      ),*/
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
                      height: 207.h,
                    ),
                    Text('Alumni',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 23.h,
                    ),
                    CTextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hintText: '13302-1728416212-1',
                      prefixIcon: const Icon(Icons.fingerprint_outlined),
                    ),
                    SizedBox(
                      height: 241.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.verifyPassword);
                        },
                        child: const Text('NEXT'),
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
