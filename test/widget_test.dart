import 'package:flutter/material.dart';
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

  testWidgets('Username has correct label', (WidgetTester tester) async {
    expectInputLabel(findUsernameInput(), "Username", tester);
  });

  testWidgets('Email has correct label', (WidgetTester tester) async {
    expectInputLabel(findEmailInput(), "Email", tester);
  });

  testWidgets('Password has correct label', (WidgetTester tester) async {
    expectInputLabel(findPasswordInput(), "Password", tester);
  });
}

/// Expect that the given text input field has a provided label
void expectInputLabel(
    Finder inputFinder, String expectedLabel, WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  expect(inputFinder, findsOneWidget);
  TextField input = tester.element(inputFinder).widget as TextField;
  expect(input.decoration, isNotNull);

  // There are two ways to configure the label, make sure both are accepted!
  if (input.decoration!.labelText != null) {
    expect(input.decoration!.labelText, equals(expectedLabel));
  } else {
    expect(input.decoration!.label, isNotNull);
    final Text labelWidget = input.decoration!.label as Text;
    expect(labelWidget.data, equals(expectedLabel));
  }
}
