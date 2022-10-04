import 'package:flutter_test/flutter_test.dart';

import 'package:exercise_e6/main.dart';

import 'test_utilities.dart';

void main() {
  testWidgets('Username input-field is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(findUsernameInput(), findsOneWidget);
  });

  testWidgets('Email input-field is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(findEmailInput(), findsOneWidget);
  });

  testWidgets('Password input-field is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(findPasswordInput(), findsOneWidget);
  });
}
