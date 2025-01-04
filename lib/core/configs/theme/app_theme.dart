import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.green,
    colorScheme: ColorScheme.light(primary: AppColors.green),
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    fontFamily: 'HelveticaNeue',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.green,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.green,
    colorScheme: ColorScheme.dark(primary: AppColors.green),
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.lexendTextTheme(),
    fontFamily: 'HelveticaNeue',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.green,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );
}
