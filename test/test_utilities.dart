import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Finds the username input field in the emulated app
Finder findUsernameInput() {
  return find.byKey(const Key("username_input"));
}

/// Finds the email input field in the emulated app
Finder findEmailInput() {
  return find.byKey(const Key("email_input"));
}

/// Finds the password input field in the emulated app
Finder findPasswordInput() {
  return find.byKey(const Key("password_input"));
}

/// Find a submission button in the emulated app
Finder findSubmissionButton() {
  return find.byKey(const Key("submit_button"));
}

/// Find a TextField widget by it's key
TextField findTextField(String key, WidgetTester tester) {
  Finder finder = find.byKey(Key(key));
  return tester.element(finder).widget as TextField;
}
