import 'package:donezy_app/src/modules/auth/domain/input_validators/email_validator.dart';

import 'password_validator.dart';

// ignore: avoid_classes_with_only_static_members
abstract class AuthValidators {
  static List<PasswordValidator>? validatePassword(String? password) {
    final List<PasswordValidator> checks = [];

    if (password == null || password.isEmpty) {
      checks.add(PasswordValidator.empty);
    } else {
      if (password.length < 6) {
        checks.add(PasswordValidator.tooShort);
      }
      if (!RegExp('[A-Z]').hasMatch(password)) {
        checks.add(PasswordValidator.noUppercase);
      }
      if (!RegExp('[a-z]').hasMatch(password)) {
        checks.add(PasswordValidator.noLowercase);
      }
      if (!RegExp('[0-9]').hasMatch(password)) {
        checks.add(PasswordValidator.noNumber);
      }
      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
        checks.add(PasswordValidator.noSpecialChar);
      }
    }

    if (checks.isNotEmpty) {
      return checks;
    }

    return null;
  }

  static List<EmailValidator>? validateEmail(String? email) {
    final List<EmailValidator> checks = [];

    if (email == null || email.isEmpty) {
      checks.add(EmailValidator.empty);
    } else {
      final emailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
      );
      if (!emailRegex.hasMatch(email)) {
        checks.add(EmailValidator.invalidEmail);
      }
    }

    if (checks.isNotEmpty) {
      return checks;
    }

    return null;
  }
}
