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
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.green,
    colorScheme: ColorScheme.dark(primary: AppColors.green),
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.lexendTextTheme(),
    fontFamily: 'HelveticaNeue',
  );
}
