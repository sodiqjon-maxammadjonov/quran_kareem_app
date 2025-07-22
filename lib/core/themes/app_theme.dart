import 'package:flutter/material.dart';
import 'package:quran_kareem/core/constants/app_colors.dart';
import '../constants/app_text_stylrs.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.lightCard,
      error: AppColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: AppColors.lightText,
    ),

    textTheme: TextTheme(
      displayLarge: AppTextStyles.headline.copyWith(color: AppColors.lightText),
      displayMedium: AppTextStyles.title.copyWith(color: AppColors.lightText),
      bodyLarge: AppTextStyles.body.copyWith(color: AppColors.uzbekText),
      bodyMedium: AppTextStyles.caption.copyWith(color: AppColors.grey),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.title.copyWith(color: AppColors.primary),
      iconTheme: const IconThemeData(color: AppColors.primary),
    ),

    cardTheme: CardThemeData(
      color: AppColors.lightCard,
      elevation: 4,
      shadowColor: AppColors.primary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: AppTextStyles.button,
        elevation: 2,
      ),
    ),

    // Matn kiritish maydonlari (TextFormField, TextField) uchun uslub
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      labelStyle: AppTextStyles.body.copyWith(color: AppColors.grey),
      hintStyle: AppTextStyles.body.copyWith(color: AppColors.lightGrey),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 4,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightCard,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grey,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
    ),
  );

  // --- Qorong'u Mavzu (Dark Theme) ---
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.darkCard,
      error: AppColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: AppColors.darkText,
    ),

    textTheme: TextTheme(
      displayLarge: AppTextStyles.headline.copyWith(color: AppColors.darkText),
      displayMedium: AppTextStyles.title.copyWith(color: AppColors.darkText),
      bodyLarge: AppTextStyles.body.copyWith(color: AppColors.darkText),
      bodyMedium: AppTextStyles.caption.copyWith(color: AppColors.lightGrey),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.title.copyWith(color: AppColors.darkText),
      iconTheme: const IconThemeData(color: AppColors.darkIcon),
    ),

    cardTheme: CardThemeData(
      color: AppColors.darkCard,
      elevation: 6,
      shadowColor: AppColors.secondary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        foregroundColor: Colors.black, // Oltin rang ustida qora matn
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: AppTextStyles.button.copyWith(color: Colors.black),
        elevation: 2,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkGradientEnd,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.secondary, width: 2),
      ),
      labelStyle: AppTextStyles.body.copyWith(color: AppColors.lightGrey),
      hintStyle: AppTextStyles.body.copyWith(color: AppColors.grey),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.secondary,
      foregroundColor: Colors.black,
      elevation: 4,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkCard,
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: AppColors.lightGrey,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
    ),
  );
}