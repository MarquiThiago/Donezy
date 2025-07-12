import 'package:donezy_app/src/modules/auth/domain/input_validators/password_validator.dart';
import 'package:flutter/material.dart';

extension PasswordValidatorTranslation on PasswordValidator {
  String translate(BuildContext context) => switch (this) {
    PasswordValidator.notMatch => 'Passwords do not match',
    PasswordValidator.empty => 'Empty password',
    PasswordValidator.tooShort => 'Too short password',
    PasswordValidator.noUppercase => 'No uppercase in password',
    PasswordValidator.noLowercase => 'No lowercase in password',
    PasswordValidator.noNumber => 'No number in password',
    PasswordValidator.noSpecialChar => 'No special character in password',
  };
}
