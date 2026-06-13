import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:food_score/screens/auth/auth_screen.dart';

void main() {
  testWidgets('register form validates password length', (
    WidgetTester tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: AuthScreen())),
    );

    await tester.tap(find.text('Sign in with email instead'));
    await tester.pumpAndSettle();

    await tester.ensureVisible(find.text("Don't have an account? Register"));
    await tester.tap(find.text("Don't have an account? Register"));
    await tester.pumpAndSettle();

    final fields = find.byType(TextField);
    await tester.enterText(fields.at(0), 'tester');
    await tester.enterText(fields.at(1), 'tester@example.com');
    await tester.enterText(fields.at(2), '12345');

    await tester.tap(find.text('Create Account'));
    await tester.pump();

    expect(find.text('Password must be at least 6 characters'), findsOneWidget);
  });
}
