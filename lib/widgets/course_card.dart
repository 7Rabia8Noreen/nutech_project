import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/utils/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({Key? key, required this.course});

  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: REdgeInsets.symmetric(horizontal: 21.w),
      child: Container(
        height: 120.h,
        width: 335.w,
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
                children: [Image.asset(course.imageUrl)],
              ),
              Column(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 111.h,
                      width: 223.w,
                      decoration: BoxDecoration(
                        //  border: BoxBorder(),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r),
                        ),

                        color: Colors.white,
                      ),
                      child: RPadding(
                        padding: REdgeInsets.symmetric(
                            horizontal: 11.w, vertical: 15.h),
                        child: Column(
                          children: [
                            Text(
                              course.title,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontFamily: 'Red Hat Display'),
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
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 92.w,
                                ),
                                Text(
                                  course.charges.toString(),
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF000000),
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
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 92.w,
                                ),
                                Text(
                                  course.duration.toString(),
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF000000),
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
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 92.w,
                                ),
                                Text(
                                  course.classes,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Red Hat Display',
                                    color: const Color(0xFF000000),
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
      ),
    );
  }
}
