import 'package:flutter/material.dart';

import 'colors.dart';

List<ThemeData> getThemes() {
  return [
    /** 
     * LIGHT THEME
     * This theme is applied when the theme mode is set to light.
    */
    ThemeData(
      backgroundColor: AppColors.primaryBg,
      primaryColor: AppColors.primaryBlue,
      iconTheme: const IconThemeData(
        color: AppColors.grey,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: AppColors.primaryBlue,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        // Regular body text
        bodyMedium: TextStyle(fontSize: 12, color: AppColors.primaryText),
        displaySmall: TextStyle(fontSize: 12, color: AppColors.primaryBlue),
        labelMedium: TextStyle(fontSize: 12, color: AppColors.grey),
        // Captions
        bodySmall: TextStyle(fontSize: 10, color: AppColors.grey),
        // Button
        labelSmall: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    ),

    /** 
     * Dark theme
     * This theme is applies when the theme mode is set to dark.
    */
    ThemeData(),
  ];
}
