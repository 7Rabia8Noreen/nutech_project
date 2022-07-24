import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/utils/routes.dart';

class ShowQualification extends StatefulWidget {
  ShowQualification({Key? key}) : super(key: key);

  @override
  State<ShowQualification> createState() => _ShowQualificationState();
}

class _ShowQualificationState extends State<ShowQualification> {
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
          RPadding(
            padding: REdgeInsets.fromLTRB(24, 34, 24, 10),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RouteGenerator.personalInformation);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                          color: Colors.black,
                        ),
                        //backgroundColor: Colors.white,
                        // foregroundColor: ,
                        Text('Qualification',
                            style: Theme.of(context).textTheme.headline5),

                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RouteGenerator.qualification);
                          },
                          icon: const Icon(
                            Icons.add,
                          ),
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 73.h,
                    ),
                    Container(
                      height: 136.w,
                      width: 330.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color(0xFF444444),
                        // color: const Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 13, top: 12, right: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bachelors in Computer Science',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Red Hat Display',
                              ),
                            ),
                            Text(
                              'International Islamic University Islamabad',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Red Hat Display',
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Obtained Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '2440',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '3550',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Passing Year',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '2019',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Container(
                      height: 136.w,
                      width: 330.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color(0xFF444444),
                        // color: const Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 13, top: 12, right: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bachelors in Computer Science',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Red Hat Display',
                              ),
                            ),
                            Text(
                              'International Islamic University Islamabad',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Red Hat Display',
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Obtained Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '2440',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '3550',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Passing Year',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '2019',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Container(
                      height: 136.w,
                      width: 330.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color(0xFF444444),
                        // color: const Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 13, top: 12, right: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bachelors in Computer Science',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Red Hat Display',
                              ),
                            ),
                            Text(
                              'International Islamic University Islamabad',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Red Hat Display',
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Obtained Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '2440',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '3550',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Passing Year',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                                Text(
                                  '2019',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Red Hat Display',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 203.h,
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
