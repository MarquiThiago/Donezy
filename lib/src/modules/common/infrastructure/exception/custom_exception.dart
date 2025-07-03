import 'package:equatable/equatable.dart';

import 'custom_exception_code.dart';

class CustomException with EquatableMixin implements Exception {
  CustomException({required this.code, this.message, this.stackTrace});

  final CustomExceptionCode code;
  final String? message;
  final String? stackTrace;

  @override
  List<Object?> get props => [code, message, stackTrace];
}
