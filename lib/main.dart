import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutech/pages/add_alumni_details.dart';
import 'package:nutech/pages/alumni_cnic.dart';
import 'package:nutech/pages/applied_courses.dart';
import 'package:nutech/pages/apply_detail_course.dart';
import 'package:nutech/pages/edit_profile.dart';
import 'package:nutech/pages/employer_details.dart';
import 'package:nutech/pages/forgot_password.dart';
import 'package:nutech/pages/notifications.dart';
import 'package:nutech/pages/offered_courses.dart';
import 'package:nutech/pages/offered_courses_profile.dart';
import 'package:nutech/pages/personal_information.dart';
import 'package:nutech/pages/qualification.dart';
import 'package:nutech/pages/reset_password.dart';
import 'package:nutech/pages/show_profile.dart';
import 'package:nutech/pages/show_qualification.dart';
import 'package:nutech/pages/otp_page.dart';
import 'package:nutech/providers/city_provider.dart';
import 'package:nutech/providers/country_provider.dart';
import 'package:nutech/providers/date_provider.dart';
import 'package:nutech/providers/disability_provider.dart';
import 'package:nutech/providers/login_provider.dart';
import 'package:nutech/providers/minority_provider.dart';
import 'package:nutech/providers/occupation_provider.dart';
import 'package:nutech/providers/otp_verification_provider.dart';
import 'package:nutech/providers/password_provider.dart';
import 'package:nutech/providers/province_provider.dart';
import 'package:nutech/providers/signup_provider.dart';
import 'package:nutech/utils/routes.dart';
import 'package:nutech/utils/theme_dark.dart';
import 'package:nutech/utils/theme_light.dart';
import 'package:provider/provider.dart';
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
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => PasswordProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => DateProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => MinorityProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => DisabilityProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => CountryProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => OccupationProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ProvinceProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => CityProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => SignupProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => LoginProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => OTPVerificationProvider(),
          ),
        ],
        child: MaterialApp(
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
          // home: Qualification(),
          //home: LoginPage(),
          // home: XpertIptvLogin(),
          //home: SignUpPage(),
          // home: PersonalInformation(),
          // home: ResetPassword(),
          //home: ForgotPassword(),
          //home: VerifyPassword(),
          //home: ShowProfile(),
          //home: EditProfile(),
          //home: OfferedCourses(),
          //home: OfferedCoursesProfile(),
          // home: Notifications(),
          //home: AppliedCourses(),
          //home: ApplyDetailCourse(),
          // home: AlumniCNIC(),
          // home: AddAlumniDetails(),
          //home: EmployerDetails(),
          // home: EditProfile(),
          // home: PersonalInformation(),
          //home: SignUpPage(),

          initialRoute: RouteGenerator.signup,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
      designSize: const Size(375, 812),
    );
  }
}
