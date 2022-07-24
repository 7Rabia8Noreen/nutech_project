import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nutech/utils/routes.dart';
import 'package:nutech/utils/course_list.dart';
import 'package:nutech/widgets/show_course_modules.dart';

class ApplyDetailCourse extends StatefulWidget {
  ApplyDetailCourse({Key? key}) : super(key: key);

  @override
  State<ApplyDetailCourse> createState() => _ApplyDetailCourseState();
}

class _ApplyDetailCourseState extends State<ApplyDetailCourse> {
  final course = courses.where((element) => element.id == 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //top: 0,
            top: 50.h,
            //right: 0,
            child: RPadding(
              padding: REdgeInsets.only(left: 20.w, right: 23.w),
              child: SizedBox(
                height: 223.h,
                width: 334.w,
                child: Image.asset(
                  'assets/images/detail_course.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            //top: 0,
            bottom: 0,
            //right: 0,
            child: SvgPicture.asset(
              'assets/svg/qualification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50.h,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF8B010B),
              ),
            ),
          ),
          Positioned(
            top: 255.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
              child: Container(
                height: 468.h,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),
                child: RPadding(
                    padding: REdgeInsets.all(20.0),
                    child: ShowCourseModules(course: courses)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
