import 'package:flutter/material.dart';

class AppColors {
  // Light
  static const Color primary = Color(0xFF2E7D32);
  static const Color primaryContainer = Color(0xFF2E7D32);
  static const Color secondary = Color(0xFF286B33);
  static const Color secondaryContainer = Color(0xFFABF4AC);
  static const Color accent = primary;
  static const Color onAccent = onPrimary;
  static const Color tertiary = Color(0xFF415B45);
  static const Color tertiaryContainer = Color(0xFF59745C);
  static const Color surface = Color(0xFFFBF9F8);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF5F3F3);
  static const Color surfaceContainer = Color(0xFFF0EDED);
  static const Color surfaceContainerHigh = Color(0xFFEAE8E7);
  static const Color surfaceContainerHighest = Color(0xFFE4E2E1);
  static const Color surfaceDim = Color(0xFFDCD9D9);
  static const Color surfaceVariant = Color(0xFFE4E2E1);
  static const Color onSurface = Color(0xFF1B1C1C);
  static const Color onSurfaceVariant = Color(0xFF40493D);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFBA1A1A);
  static const Color outline = Color(0xFF707A6C);
  static const Color outlineVariant = Color(0xFFBFCABA);
  static const Color shadow = Color(0xFF000000);
  static const Color primaryFixed = Color(0xFFA3F69C);
  static const Color primaryFixedDim = Color(0xFF88D982);
  static const Color success = Color(0xFF4CAF50);
  static const Color good = Color(0xFF8BC34A);
  static const Color moderate = Color(0xFFFF9800);
  static const Color fair = Color(0xFFFF7043);
  static const Color poor = Color(0xFFF44336);
  static const Color additiveHarmful = Color(0xFFD32F2F);
  static const Color additiveHigh = Color(0xFFF57C00);
  static const Color additiveMedium = Color(0xFFFBC02D);
  static const Color additiveLow = Color(0xFF388E3C);

  // Dark — true black base
  static const Color darkPrimary = Color(0xFF4CAF50);
  static const Color darkPrimaryContainer = Color(0xFF1B5E20);
  static const Color darkSecondary = Color(0xFF66BB6A);
  static const Color darkSecondaryContainer = Color(0xFF1B5E20);
  static const Color darkTertiary = Color(0xFF81C784);
  static const Color darkTertiaryContainer = Color(0xFF2E7D32);
  static const Color darkSurface = Color(0xFF000000);
  static const Color darkSurfaceContainerLowest = Color(0xFF0A0A0A);
  static const Color darkSurfaceContainerLow = Color(0xFF111111);
  static const Color darkSurfaceContainer = Color(0xFF1A1A1A);
  static const Color darkSurfaceContainerHigh = Color(0xFF222222);
  static const Color darkSurfaceContainerHighest = Color(0xFF2A2A2A);
  static const Color darkSurfaceDim = Color(0xFF000000);
  static const Color darkSurfaceVariant = Color(0xFF222222);
  static const Color darkOnSurface = Color(0xFFE6E6E6);
  static const Color darkOnSurfaceVariant = Color(0xFFB0B0B0);
  static const Color darkOnPrimary = Color(0xFFFFFFFF);
  static const Color darkOnSecondary = Color(0xFFFFFFFF);
  static const Color darkOnTertiary = Color(0xFFFFFFFF);
  static const Color darkError = Color(0xFFEF5350);
  static const Color darkOutline = Color(0xFF555555);
  static const Color darkOutlineVariant = Color(0xFF333333);
  static const Color darkShadow = Color(0xFF000000);
  static const Color darkPrimaryFixed = Color(0xFFA5D6A7);
  static const Color darkPrimaryFixedDim = Color(0xFF388E3C);

  static const double radiusSmall = 8;
  static const double radiusMedium = 12;
  static const double radiusLarge = 24;
}

extension ThemeColors on BuildContext {
  Color get surface => Theme.of(this).colorScheme.surface;
  Color get surfaceContainerLowest => Theme.of(this).colorScheme.surfaceContainerLowest;
  Color get surfaceContainerLow => Theme.of(this).colorScheme.surfaceContainerLow;
  Color get surfaceContainer => Theme.of(this).colorScheme.surfaceContainer;
  Color get surfaceContainerHigh => Theme.of(this).colorScheme.surfaceContainerHigh;
  Color get surfaceContainerHighest => Theme.of(this).colorScheme.surfaceContainerHighest;
  Color get onSurface => Theme.of(this).colorScheme.onSurface;
  Color get onSurfaceVariant => Theme.of(this).colorScheme.onSurfaceVariant;
  Color get surfaceVariant => Theme.of(this).colorScheme.surfaceContainerHighest;
  Color get surfaceDim => Theme.of(this).colorScheme.surfaceDim;
  Color get outline => Theme.of(this).colorScheme.outline;
  Color get outlineVariant => Theme.of(this).colorScheme.outlineVariant;
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
  Color get secondary => Theme.of(this).colorScheme.secondary;
  Color get error => Theme.of(this).colorScheme.error;
  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;
}
