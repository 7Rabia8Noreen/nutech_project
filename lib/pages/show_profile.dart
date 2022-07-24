import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:badges/badges.dart';

class ShowProfile extends StatefulWidget {
  ShowProfile({Key? key}) : super(key: key);

  @override
  State<ShowProfile> createState() => _ShowProfileState();
}

class _ShowProfileState extends State<ShowProfile> {
  @override
  void _startAddQualification(BuildContext ctx) {
    Qualification();
    /*showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: Qualification(),
          behavior: HitTestBehavior.opaque,
        );
      },
    );*/
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //top: 0,
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/svg/qualification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),
          /*Padding(
            padding: EdgeInsets.only(left: 117.w, top: 60.h),
            child: Container(
                width: 142.w,
                height: 146.h,
                child: Image.asset('assets/images/profile_top.png')),
          ),
          Positioned(
            //top: 0,
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/svg/qualification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),
          RPadding(
            padding: REdgeInsets.only(left: 215.w, top: 150.h),
            child: FloatingActionButton(
              onPressed: () {},
              child: Image.asset('assets/images/pointer_icon.png'),
              backgroundColor: Color(0xFF8B010B),
            ),
          ),*/
          SingleChildScrollView(
            child: SafeArea(
              child: RPadding(
                padding: REdgeInsets.fromLTRB(22, 0, 26, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => PersonalInformation()));
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                              ),
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Qualification()));
                                  },
                                  icon: Image.asset(
                                      'assets/images/profile_icon.png'),
                                  color: Colors.black,
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Qualification()));
                                  },
                                  icon: Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Red Hat Display',
                                    ),
                                  ),
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Badge(
                      toAnimate: true,
                      shape: BadgeShape.circle,
                      // badgeColor: Theme.of(context).primaryColor,
                      badgeColor: Colors.transparent,

                      position: BadgePosition.bottomEnd(),
                      badgeContent: FloatingActionButton(
                        onPressed: () {},
                        // tooltip: 'Increment',
                        child: Image.asset(
                          'assets/images/pointer_icon.png',
                          width: 90.w,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.white, width: 2)),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),

                      /* Image.asset(
                'assets/images/pointer_icon.png',
                width: 80.w,
              ),*/
                      child: Container(
                        width: 142.w,
                        height: 146.h,
                        child: Image.asset(
                          'assets/images/profile_top.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Neel Abbas',
                      style: TextStyle(
                        color: Color(0xFF8B010B),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Red Hat Display',
                      ),
                    ),
                    Text(
                      'Student',
                      style: TextStyle(
                        color: Color(0xFF5D5E5E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Red Hat Display',
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset(
                              'assets/svg/registraton_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            '13302-1728416212-1',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset('assets/svg/person_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Father Name',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset('assets/svg/female_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child:
                              SvgPicture.asset('assets/svg/married_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Married',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child:
                              SvgPicture.asset('assets/svg/language_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'English,Urdu,Punjabi',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset('assets/svg/call_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            '+9236-2689323',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child:
                              SvgPicture.asset('assets/svg/location_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Somewhere,Punjab,Pakistan',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset('assets/svg/date_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            '5-Nov-1978',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset('assets/svg/email_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'abbasOfficial@gmail.com',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child:
                              SvgPicture.asset('assets/svg/province_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Punjab',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset(
                              'assets/svg/programmer_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Programmer',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child:
                              SvgPicture.asset('assets/svg/minority_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Minority',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset(
                              'assets/svg/disability_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Disability',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        RPadding(
                          padding: REdgeInsets.only(left: 40),
                          child: SvgPicture.asset(
                              'assets/svg/nationality_icon.svg'),
                        ),
                        RPadding(
                          padding: REdgeInsets.only(left: 24),
                          child: Text(
                            'Other Nationality',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5D5E5E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  ],
                ),
              ),
            ),
          ),
          /*Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                //  boxShadow: BoxShadow(spreadRadius: 7),
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.white, width: 2, style: BorderStyle.solid),
              ),
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 55),
              width: 60,
              height: 62,
              child: FloatingActionButton(
                // focusColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Image.asset(
                  'assets/images/pointer_icon.png',
                  width: 80.w,
                ),
              ),
            ),
          ),*/
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // tooltip: 'Increment',
        child: Image.asset(
          'assets/images/pointer_icon.png',
          width: 90.w,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.white, width: 2)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
