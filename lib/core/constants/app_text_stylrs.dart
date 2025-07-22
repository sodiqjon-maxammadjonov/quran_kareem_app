import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle amiriTitle = GoogleFonts.amiri(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.arabicText,
  );

  static final TextStyle amiriAyah = GoogleFonts.amiri(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: AppColors.arabicText,
    height: 1.8,
  );

  static final TextStyle amiriCaption = GoogleFonts.amiri(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.arabicText,
  );

  static const TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.lightText,
  );

  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.lightText,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.uzbekText,
    height: 1.5,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}