import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/utils/routes.dart';
import 'package:nutech/utils/course_list.dart';

import '../widgets/course_card.dart';

class AppliedCourses extends StatefulWidget {
  AppliedCourses({Key? key}) : super(key: key);

  @override
  State<AppliedCourses> createState() => _AppliedCoursesState();
}

class _AppliedCoursesState extends State<AppliedCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //top: 0,
            bottom: 0,
            //right: 0,
            child: SvgPicture.asset(
              'assets/svg/qualification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.personalInformation);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                        color: Color(0xFF8B010B)),
                    SizedBox(
                      width: 60.w,
                    ),
                    Text('Applied Courses',
                        style: Theme.of(context).textTheme.headline5),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: courses.length,
                    itemBuilder: (context, index) => CourseCard(
                      course: courses[index],
                    ),
                    padding: REdgeInsets.all(0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
