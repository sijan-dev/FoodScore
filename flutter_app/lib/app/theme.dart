import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tokens.dart';

class AppTheme {
  static ThemeData light() {
    final colorScheme = ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.primaryContainer,
      onSecondary: AppColors.onPrimary,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
      error: AppColors.error,
    );

    final baseTextTheme = GoogleFonts.latoTextTheme();

    return ThemeData(
      useMaterial3: false,
      colorScheme: colorScheme,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.surface,
      textTheme: baseTextTheme.apply(
        bodyColor: AppColors.onSurface,
        displayColor: AppColors.onSurface,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: 2,
        titleTextStyle: baseTextTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.onPrimary,
        ),
        iconTheme: const IconThemeData(color: AppColors.onPrimary),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceContainerLow,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
