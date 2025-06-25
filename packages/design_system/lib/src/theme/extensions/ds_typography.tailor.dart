// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ds_typography.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$DSTypographyTailorMixin on ThemeExtension<DSTypography> {
  TextStyle get example;

  @override
  DSTypography copyWith({TextStyle? example}) {
    return DSTypography(example: example ?? this.example);
  }

  @override
  DSTypography lerp(covariant ThemeExtension<DSTypography>? other, double t) {
    if (other is! DSTypography) return this as DSTypography;
    return DSTypography(example: TextStyle.lerp(example, other.example, t)!);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DSTypography &&
            const DeepCollectionEquality().equals(example, other.example));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(example),
    );
  }
}

extension DSTypographyBuildContext on BuildContext {
  DSTypography get dSTypography => Theme.of(this).extension<DSTypography>()!;
}
