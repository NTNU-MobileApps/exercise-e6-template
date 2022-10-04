import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Finds the username input field in the app
Finder findUsernameInput() {
  return find.byKey(const Key("username_input"));
}

/// Finds the email input field in the app
Finder findEmailInput() {
  return find.byKey(const Key("email_input"));
}

/// Finds the password input field in the app
Finder findPasswordInput() {
  return find.byKey(const Key("password_input"));
}
