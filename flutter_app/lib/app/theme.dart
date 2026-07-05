import 'package:flutter/material.dart';

import 'tokens.dart';

class AppTheme {
  static ThemeData light() => _build(
    isDark: false,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      tertiary: AppColors.tertiary,
      onTertiary: AppColors.onTertiary,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
      error: AppColors.error,
      primaryContainer: AppColors.primaryContainer,
      surfaceContainer: AppColors.surfaceContainer,
      surfaceContainerLowest: AppColors.surfaceContainerLowest,
      outline: AppColors.outline,
      outlineVariant: AppColors.outlineVariant,
    ),
    scaffoldBg: AppColors.surface,
    cardColor: AppColors.surfaceContainerLowest,
    inputFill: AppColors.surfaceContainer,
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    onSurface: AppColors.onSurface,
    onSurfaceVariant: AppColors.onSurfaceVariant,
    outline: AppColors.outline,
    outlineVariant: AppColors.outlineVariant,
  );

  static ThemeData dark() => _build(
    isDark: true,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkPrimary,
      onPrimary: AppColors.darkOnPrimary,
      secondary: AppColors.darkSecondary,
      onSecondary: AppColors.darkOnSecondary,
      tertiary: AppColors.darkTertiary,
      onTertiary: AppColors.darkOnTertiary,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkOnSurface,
      error: AppColors.darkError,
      primaryContainer: AppColors.darkPrimaryContainer,
      surfaceContainer: AppColors.darkSurfaceContainer,
      surfaceContainerLowest: AppColors.darkSurfaceContainerLowest,
      outline: AppColors.darkOutline,
      outlineVariant: AppColors.darkOutlineVariant,
    ),
    scaffoldBg: AppColors.darkSurface,
    cardColor: AppColors.darkSurfaceContainerLowest,
    inputFill: AppColors.darkSurfaceContainer,
    primary: AppColors.darkPrimary,
    onPrimary: AppColors.darkOnPrimary,
    onSurface: AppColors.darkOnSurface,
    onSurfaceVariant: AppColors.darkOnSurfaceVariant,
    outline: AppColors.darkOutline,
    outlineVariant: AppColors.darkOutlineVariant,
  );

  static ThemeData _build({
    required bool isDark,
    required ColorScheme colorScheme,
    required Color scaffoldBg,
    required Color cardColor,
    required Color inputFill,
    required Color primary,
    required Color onPrimary,
    required Color onSurface,
    required Color onSurfaceVariant,
    required Color outline,
    required Color outlineVariant,
  }) {
    const publicSans = 'Public Sans';
    const poppins = 'Poppins';

    final baseTextTheme = (isDark ? ThemeData.dark() : ThemeData.light())
        .textTheme
        .apply(fontFamily: publicSans);

    final textTheme = baseTextTheme.copyWith(
      displayLarge: baseTextTheme.displayLarge?.copyWith(fontFamily: poppins),
      displayMedium: baseTextTheme.displayMedium?.copyWith(fontFamily: poppins),
      displaySmall: baseTextTheme.displaySmall?.copyWith(fontFamily: poppins),
      headlineLarge: baseTextTheme.headlineLarge?.copyWith(fontFamily: poppins),
      headlineMedium: baseTextTheme.headlineMedium?.copyWith(
        fontFamily: poppins,
      ),
      headlineSmall: baseTextTheme.headlineSmall?.copyWith(fontFamily: poppins),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
      colorScheme: colorScheme,
      primaryColor: primary,
      scaffoldBackgroundColor: scaffoldBg,
      textTheme: textTheme.apply(bodyColor: onSurface, displayColor: onSurface),
      appBarTheme: AppBarTheme(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: onPrimary,
        ),
        iconTheme: IconThemeData(color: onPrimary),
      ),
      cardTheme: CardThemeData(
        color: cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusLarge),
          side: BorderSide(color: outlineVariant.withValues(alpha: 0.5)),
        ),
      ),
      dialogTheme: DialogThemeData(backgroundColor: cardColor),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppColors.radiusMedium),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          side: BorderSide(color: outline, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppColors.radiusMedium),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          textStyle: textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return primary;
          return onSurfaceVariant;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primary.withValues(alpha: 0.5);
          }
          return outlineVariant;
        }),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: inputFill,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusMedium),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusMedium),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppColors.radiusMedium),
          borderSide: BorderSide(color: primary, width: 1.5),
        ),
        labelStyle: textTheme.bodyMedium?.copyWith(color: onSurfaceVariant),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: onSurfaceVariant.withValues(alpha: 0.8),
        ),
      ),
    );
  }
}
