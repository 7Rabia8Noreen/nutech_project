import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final themeDataLight = ThemeData.light().copyWith(
  primaryColor: kLightPrimary,
  scaffoldBackgroundColor: kLightBackground,
  backgroundColor: kLightPlaceholder,
  errorColor: kLightError,
  textTheme: GoogleFonts.redHatDisplayTextTheme(
    const TextTheme().copyWith(
      headline1: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: kLightPrimary,
      ),
      headline2: TextStyle(
        fontSize: 14.sp,
        color: kLightPrimary,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        fontSize: 14.sp,
        color: kLightPrimary,
        fontWeight: FontWeight.w500,
      ),
      headline4: TextStyle(
        fontSize: 14.sp,
        color: kLightTextColor,
        fontWeight: FontWeight.w400,
      ),
      headline5: TextStyle(
        fontSize: 20.sp,
        color: kLightPrimary,
        fontWeight: FontWeight.w800,
      ),
      headline6: TextStyle(
        fontSize: 12.sp,
        color: kDarkPrimary,
        fontWeight: FontWeight.w700,
      ),
      /*headlineLarge: TextStyle(
        fontSize: 24.sp,
        color: kLightTextColor,
        fontWeight: FontWeight.w800,
      ),*/
      bodyText1: TextStyle(
        fontSize: 14.sp,
        color: kLightTextColor,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: TextStyle(
        fontSize: 40.sp,
        color: kLightTextColor,
        fontWeight: FontWeight.w800,
      ),
      subtitle1: const TextStyle(
        color: kLightPrimary,
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
        color: kLightPlaceholderText),
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
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: kLightPrimary,
    titleTextStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: kLightBackground,
    selectedItemColor: kLightPrimary,
    selectedIconTheme: IconThemeData(
      color: kLightPrimary,
      size: 24.sp,
    ),
    unselectedItemColor: kLightPlaceholderText,
    unselectedIconTheme: IconThemeData(
      color: kLightPlaceholderText,
      size: 24.sp,
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    refreshBackgroundColor: kLightPlaceholder,
  ),
  colorScheme: const ColorScheme.light().copyWith(
    background: kLightPlaceholder,
    surface: kLightPlaceholderText,
    primary: kLightPrimary,
    secondary: kLightAccent,
  ),
);
