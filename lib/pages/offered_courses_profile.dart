import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/c_text_form_field.dart';

class OfferedCoursesProfile extends StatefulWidget {
  OfferedCoursesProfile({Key? key}) : super(key: key);

  @override
  State<OfferedCoursesProfile> createState() => _OfferedCoursesProfileState();
}

class _OfferedCoursesProfileState extends State<OfferedCoursesProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            // right: 0,
            child: SvgPicture.asset('assets/svg/offered_courses_top.svg'),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    RPadding(
                      padding: REdgeInsets.only(
                        top: 50.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            ///mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi FAIZAN',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              Text(
                                'Welcome back!',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 52.w,
                                height: 52.h,
                                child: Image.asset(
                                  'assets/images/profile_image.png',
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Offered Courses',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              'Offered Programs',
                              style: Theme.of(context).textTheme.headline4,
                            )
                          ],
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '15',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              '04',
                              style: Theme.of(context).textTheme.headline4,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Programs',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 250.h,
                            width: 200.w,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Color(0xFFBCBCBC), width: 1.sp,
                                  //color: Color(Colors.black), width: 1.sp,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    child: Image.asset(
                                      'assets/images/kamyab_jawan_logo.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    child: RPadding(
                                      padding: REdgeInsets.only(
                                          left: 11.w, top: 9.h),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('New'),
                                        style: TextButton.styleFrom(
                                          primary: Color(0xFF8B010B),
                                          textStyle: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            //side: BorderSide(color: Color(Colors.transparent))
                                          ),
                                          backgroundColor: Color(0xFFD9D9D9),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6.w, vertical: 2.h),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text('KAMYAB JAWAN PROGRAM'),
                                      style: TextButton.styleFrom(
                                        primary: Color(0xFFFFFFFF),
                                        textStyle: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        minimumSize: Size(192.w, 50.h),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.r),
                                            bottomRight: Radius.circular(12.r),
                                          ),
                                        ),
                                        backgroundColor: Colors.black45,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.w, vertical: 2.h),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 250.h,
                            width: 200.w,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Color(0xFFBCBCBC), width: 1.sp,
                                  //color: Color(Colors.black), width: 1.sp,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    child: Image.asset(
                                      //'assets/images/kamyab_jawan_logo.png',
                                      'assets/images/uni_logo.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    child: RPadding(
                                      padding: REdgeInsets.only(
                                          left: 11.w, top: 9.h),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('New'),
                                        style: TextButton.styleFrom(
                                          primary: Color(0xFF8B010B),
                                          textStyle: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            //side: BorderSide(color: Color(Colors.transparent))
                                          ),
                                          backgroundColor: Color(0xFFD9D9D9),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6.w, vertical: 2.h),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text('NUTECH'),
                                      style: TextButton.styleFrom(
                                        primary: Color(0xFFFFFFFF),
                                        textStyle: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        minimumSize: Size(192.w, 50.h),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.r),
                                            bottomRight: Radius.circular(12.r),
                                          ),
                                        ),
                                        backgroundColor: Colors.black45,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.w, vertical: 2.h),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 27.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Courses',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 300.h,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 120.h,
                            width: 337.w,
                            child: Card(
                              elevation: 0,
                              color: Color(0xFF3A6072),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Colors.transparent,
                                  width: 0.sp,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/graphic_designing.png')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          height: 111.h,
                                          width: 222.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10.r),
                                              bottomRight:
                                                  Radius.circular(10.r),
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: RPadding(
                                            padding: REdgeInsets.symmetric(
                                                horizontal: 11.w,
                                                vertical: 15.h),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Graphics Design',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontFamily:
                                                          'Red Hat Display'),
                                                ),
                                                SizedBox(
                                                  height: 7.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Charges',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        color: const Color(
                                                            0xFF000000),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 92.w,
                                                    ),
                                                    Text(
                                                      'Free',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        color: const Color(
                                                            0xFF000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 7.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Duration',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        color: const Color(
                                                            0xFF000000),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 92.w,
                                                    ),
                                                    Text(
                                                      '6 Months',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        color: const Color(
                                                            0xFF000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 7.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Classes',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        color: const Color(
                                                            0xFF000000),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 92.w,
                                                    ),
                                                    Text(
                                                      'Mon-Fri',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily:
                                                            'Red Hat Display',
                                                        color: const Color(
                                                            0xFF000000),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.golf_course_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Color(0xFF8B010B),
        onTap: (_) {},
      ),
    );
  }
}
