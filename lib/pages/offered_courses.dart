import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutech/utils/course.dart';
import 'package:nutech/widgets/course_card.dart';
import 'package:nutech/utils/program.dart';
import 'package:nutech/widgets/program_card.dart';

import '../utils/programs_list.dart';
import '../widgets/app_drawer.dart';
import '../utils/course_list.dart';

class OfferedCourses extends StatefulWidget {
  OfferedCourses({Key? key}) : super(key: key);

  @override
  State<OfferedCourses> createState() => _OfferedCoursesState();
}

class _OfferedCoursesState extends State<OfferedCourses> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: ScreenUtil().screenWidth,
            height: 160.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: SvgPicture.asset(
                    'assets/svg/offered_courses_top.svg',
                    width: ScreenUtil().screenWidth,
                  ),
                ),
                Positioned(
                  top: 30.h,
                  child: SizedBox(
                    width: ScreenUtil().screenWidth,
                    child: Padding(
                      padding: REdgeInsets.only(
                        left: 10.w,
                        right: 17.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () =>
                                    _scaffoldKey.currentState!.openDrawer(),
                                icon: Icon(
                                  Icons.menu,
                                  size: 30.w,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Hi FAIZAN',
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontFamily: 'Red Hat Display',
                                    ),
                                  ),
                                  Text(
                                    'Welcome back!',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontFamily: 'Red Hat Text',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.h,
                          ),
                          Padding(
                            padding: REdgeInsets.only(
                              left: 10.w,
                              right: 17.w,
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Offered Courses',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                            color: Colors.white,
                                          ),

                                      /// Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Text(
                                      '15',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                      //Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Offered Programs',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                      // Theme.of(context).textTheme.headline4,
                                    ),
                                    Text(
                                      '04',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                      //Theme.of(context).textTheme.headline4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Programs',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(
                  height: 0.h,
                ),
                SizedBox(
                  height: 223.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: programs.length,
                    itemBuilder: (context, index) => ProgramCard(
                      program: programs[index],
                    ),
                    padding: REdgeInsets.all(0),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Courses',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  //width: 192.w,
                  height: 300.h,
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
