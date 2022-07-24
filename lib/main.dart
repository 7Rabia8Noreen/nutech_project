import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/applied_courses.dart';
import 'package:nutech/pages/edit_profile.dart';
import 'package:nutech/pages/forgot_password.dart';
import 'package:nutech/pages/notifications.dart';
import 'package:nutech/pages/offered_courses.dart';
import 'package:nutech/pages/offered_courses_profile.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/pages/reset_password.dart';
import 'package:nutech/pages/show_profile.dart';
import 'package:nutech/pages/show_qualification.dart';
import 'package:nutech/pages/verify_password.dart';
import 'package:nutech/utils/routes.dart';
import 'package:nutech/utils/theme_dark.dart';
import 'package:nutech/utils/theme_light.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // Theme config
        themeMode: ThemeMode.system,
        theme: themeDataLight,
        darkTheme: themeDataDark,
        /* theme: ThemeData(
          //primarySwatch: Colors.pink,

          primarySwatch: Palette.kToDark,
        ),*/
        // home: ShowQualification(),
        //home: Qualification(),
        //home: LoginPage(),
        // home: XpertIptvLogin(),
        //home: SignUpPage(),
        //home: PersonalInformation(),
        // home: ResetPassword(),
        //home: ForgotPassword(),
        // home: VerifyPassword(),
        //home: ShowProfile(),
        //home: EditProfile(),
        // home: OfferedCourses(),
        //home: OfferedCoursesProfile(),
        // home: Notifications(),
        home: AppliedCourses(),

        // initialRoute: RouteGenerator.login,
        //onGenerateRoute: RouteGenerator.generateRoute,
      ),
      designSize: const Size(375, 812),
    );
  }
}
