import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'providers/onboarding_provider.dart';
import 'providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboardingComplete = prefs.getBool('onboarding_complete') ?? false;
  final themePref = prefs.getString('pref_theme') ?? 'system';

  final container = ProviderContainer(
    overrides: [
      preloadedOnboardingCompleteProvider.overrideWithValue(onboardingComplete),
    ],
  );
  container.read(themeModeProvider.notifier).set(_parseThemeMode(themePref));

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const FoodScoreApp(),
    ),
  );
}

ThemeMode _parseThemeMode(String value) {
  switch (value) {
    case 'light':
      return ThemeMode.light;
    case 'dark':
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}
