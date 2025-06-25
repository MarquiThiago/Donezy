// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ds_color.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$DSColorTailorMixin on ThemeExtension<DSColor> {
  MaterialColor get neutral;
  Color get success;
  Color get error;
  Color get good;
  Color get warning;
  Color get critial;

  @override
  DSColor copyWith({
    MaterialColor? neutral,
    Color? success,
    Color? error,
    Color? good,
    Color? warning,
    Color? critial,
  }) {
    return DSColor(
      neutral: neutral ?? this.neutral,
      success: success ?? this.success,
      error: error ?? this.error,
      good: good ?? this.good,
      warning: warning ?? this.warning,
      critial: critial ?? this.critial,
    );
  }

  @override
  DSColor lerp(covariant ThemeExtension<DSColor>? other, double t) {
    if (other is! DSColor) return this as DSColor;
    return DSColor(
      neutral: t < 0.5 ? neutral : other.neutral,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      good: Color.lerp(good, other.good, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      critial: Color.lerp(critial, other.critial, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DSColor &&
            const DeepCollectionEquality().equals(neutral, other.neutral) &&
            const DeepCollectionEquality().equals(success, other.success) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality().equals(good, other.good) &&
            const DeepCollectionEquality().equals(warning, other.warning) &&
            const DeepCollectionEquality().equals(critial, other.critial));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(neutral),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(good),
      const DeepCollectionEquality().hash(warning),
      const DeepCollectionEquality().hash(critial),
    );
  }
}

extension DSColorBuildContext on BuildContext {
  DSColor get dSColor => Theme.of(this).extension<DSColor>()!;
}
