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

  testWidgets('Submission button is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final Finder button = findSubmissionButton();
    expect(button, findsOneWidget);
  });

  testWidgets('Username has correct label', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expectInputLabel(
        findTextField("username_input", tester), "Username", tester);
  });

  testWidgets('Email has correct label', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expectInputLabel(findTextField("email_input", tester), "Email", tester);
  });

  testWidgets('Password has correct label', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expectInputLabel(
        findTextField("password_input", tester), "Password", tester);
  });

  testWidgets('Email has correct keyboard', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final TextField emailInput = findTextField("email_input", tester);
    expect(emailInput.keyboardType, equals(TextInputType.emailAddress));
  });

  testWidgets('Password has hidden characters', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final TextField passwordInput = findTextField("password_input", tester);
    expect(passwordInput.obscureText, isTrue);
  });
}

/// Expect that the given text input field has a provided label
void expectInputLabel(
    TextField input, String expectedLabel, WidgetTester tester) async {
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
