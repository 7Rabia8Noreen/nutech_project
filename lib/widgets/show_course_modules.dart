import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/utils/course_list.dart';
import 'package:nutech/utils/routes.dart';

import '../utils/course.dart';

class ShowCourseModules extends StatelessWidget {
  final List<Course> course;

  const ShowCourseModules({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            //courses.title,
            '',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w800,
              fontFamily: 'Red Hat Display',
              color: Color(0xFF8B010B),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Duration',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF787681),
              ),
            ),
            Text(
              '6-Months',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF444444),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Classes',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF787681),
              ),
            ),
            Text(
              'Mon-Fri',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF444444),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lecture',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF787681),
              ),
            ),
            Text(
              'On Campus',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF444444),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Program',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF787681),
              ),
            ),
            Text(
              'NUTECH',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Red Hat Display',
                color: Color(0xFF444444),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Center(
          child: Text(
            'Course Modules',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w800,
              fontFamily: 'Red Hat Display',
              color: Color(0xFF8B010B),
            ),
          ),
        ),
        SizedBox(
          height: 19.h,
        ),
        Text(
          'Introduction to Microsoft Office',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Red Hat Display',
            color: Color(0xFF444444),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Basic Concepts of Database',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Red Hat Display',
            color: Color(0xFF444444),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Dart Programming Language',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Red Hat Display',
            color: Color(0xFF444444),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Flutter Application Development',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Red Hat Display',
            color: Color(0xFF444444),
          ),
        ),
        SizedBox(
          height: 120.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Red Hat Display',
                    color: Color(0xFF787681),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '3000',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Red Hat Display',
                        color: Color(0xFF8B010B),
                      ),
                    ),
                    Text(
                      '/month',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Red Hat Display',
                        color: Color(0xFF787681),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 90.w,
              height: 30.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RouteGenerator.personalInformation);
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Text(
                  'Apply Now',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Red Hat Display',
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
