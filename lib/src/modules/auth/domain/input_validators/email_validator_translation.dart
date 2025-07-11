import 'package:donezy_app/src/modules/auth/domain/input_validators/email_validator.dart';
import 'package:flutter/material.dart';

extension EmailValidatorTranslation on EmailValidator {
  String translate(BuildContext context) => switch (this) {
    EmailValidator.empty => 'Empty email',
    EmailValidator.invalidEmail => 'Invalid email',
  };
}
