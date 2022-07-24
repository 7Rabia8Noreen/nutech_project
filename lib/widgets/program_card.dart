import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/utils/program.dart';

class ProgramCard extends StatelessWidget {
  ProgramCard({Key? key, required this.program});

  final Program program;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
          side: BorderSide(color: Color(0xFFBCBCBC), width: 1.h)),
      elevation: 0,
      margin: REdgeInsets.all(10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Image.asset(
              program.imageUrl,
              fit: BoxFit.fill,
              height: 192.h,
              width: 192.w,
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
              child: Container(
                color: Colors.black45,
                width: 192.w,
                height: 33.h,
                child: Center(
                  child: RPadding(
                    padding: REdgeInsets.symmetric(vertical: 9.h),
                    child: Text(
                      program.title,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 10.w,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(5.r),
              ),
              child: Container(
                color: Color(0xFFD9D9D9),
                //color: Theme.of(context).colorScheme.surface,
                child: Center(
                  child: RPadding(
                    padding: REdgeInsets.all(5.0),
                    child: Text(
                      'New',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          //color: Theme.of(context).colorScheme.primary,
                          color: Color(0xFF8B010B)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
