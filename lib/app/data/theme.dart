import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData themeData(){
  return ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.orangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.greyColor.withAlpha(50),
          width: 1,
        ),
      ),

      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.skyColor,
          width: 2,
        ),
      ),

      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.redColor,
        ),
      ),

      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.orangeColor,
        ),
      ),
    ),


  );
}

