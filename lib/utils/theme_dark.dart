import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final themeDataDark = ThemeData.dark().copyWith(
  primaryColor: kDarkPrimary,
  scaffoldBackgroundColor: kDarkBackground,
  backgroundColor: kDarkPlaceholder,
  errorColor: kDarkError,
  textTheme: GoogleFonts.redHatDisplayTextTheme(
    const TextTheme().copyWith(
      headline1: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: kDarkPrimary,
      ),
      headline2: TextStyle(
        fontSize: 14.sp,
        color: kDarkPrimary,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        fontSize: 14.sp,
        color: kDarkPrimary,
        fontWeight: FontWeight.w500,
      ),
      headline4: TextStyle(
        fontSize: 14.sp,
        color: kDarkTextColor,
        fontWeight: FontWeight.w400,
      ),
      headline5: TextStyle(
        fontSize: 20.sp,
        color: kDarkPrimary,
        fontWeight: FontWeight.w800,
      ),
      headline6: TextStyle(
        fontSize: 12.sp,
        color: kDarkPrimary,
        fontWeight: FontWeight.w700,
      ),

      // headlineLarge: TextStyle(
      //   fontSize: 24.sp,
      //   color: kDarkTextColor,
      //   fontWeight: FontWeight.w800,
      // ),
      bodyText1: TextStyle(
        fontSize: 14.sp,
        color: kDarkTextColor,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: TextStyle(
        fontSize: 40.sp,
        color: kDarkTextColor,
        fontWeight: FontWeight.w800,
      ),

      subtitle1: const TextStyle(
        color: kDarkPrimary,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: kOutlineInputBorder,
    enabledBorder: kOutlineInputBorder,
    focusedBorder: kOutlineInputBorder,
    filled: true,
    fillColor: kLightPlaceholder,
    contentPadding: kContentPadding,
    hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: kDarkPlaceholderText),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(5),
      minimumSize: MaterialStateProperty.all(
        Size(double.infinity, 56.h),
      ),
      shape: MaterialStateProperty.all(
        const StadiumBorder(),
      ),
      foregroundColor: MaterialStateProperty.all(
        kDarkTextColor,
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: 16.sp,
          color: kDarkTextColor,
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: kDarkBackground,
    selectedItemColor: kDarkPrimary,
    selectedIconTheme: IconThemeData(
      color: kDarkPrimary,
      size: 24.sp,
    ),
    unselectedItemColor: kDarkPlaceholderText,
    unselectedIconTheme: IconThemeData(
      color: kDarkPlaceholderText,
      size: 24.sp,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: kDarkBackground,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: const IconThemeData(
      color: kDarkTextColor,
    ),
    titleTextStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    refreshBackgroundColor: kDarkPlaceholder,
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    background: kDarkPlaceholder,
    surface: kDarkPlaceholderText,
    primary: kDarkPrimary,
    secondary: kDarkAccent,
  ),
);
