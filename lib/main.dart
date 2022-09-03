import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nutech/providers/change_password_provider.dart';
import 'package:nutech/providers/city_provider.dart';
import 'package:nutech/providers/country_provider.dart';
import 'package:nutech/providers/date_provider.dart';
import 'package:nutech/providers/disability_provider.dart';
import 'package:nutech/providers/login_provider.dart';
import 'package:nutech/providers/logout_provider.dart';
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
import 'models/user.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
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
          ChangeNotifierProvider(
            create: (_) => ChangePasswordProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => LogoutProvider(),
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
