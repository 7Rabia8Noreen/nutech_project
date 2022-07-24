import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/offered_courses.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 800.h,
          ),
          Positioned(
            //top: 0,
            bottom: 0,
            // right: 0,
            child: SvgPicture.asset(
              'assets/svg/notification_bottom.svg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => OfferedCourses(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF8B010B),
                        ),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: REdgeInsets.only(left: 50.w),
                        child: Text('Qualification',
                            style: Theme.of(context).textTheme.headline1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              'No new notifications.',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w300,
                color: Color(0xFF000000),
                fontFamily: 'Red Hat Text',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
