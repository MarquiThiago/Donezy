import 'package:design_system/src/const/ds_colors.dart';
import 'package:design_system/src/theme/base/ds_pallete.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'ds_color.tailor.dart';

@TailorMixin(
  themeGetter: ThemeGetter.onBuildContext,
)
class DSColor extends ThemeExtension<DSColor> with _$DSColorTailorMixin {
  const DSColor({
    required this.neutral,
    required this.success,
    required this.good,
    this.error = DSColors.red,
    this.warning = DSColors.orange,
    this.critial = DSColors.red,
  });

  @override
  final MaterialColor neutral;

  @override
  final Color success;

  @override
  final Color error;

  @override
  final Color good;

  @override
  final Color warning;

  @override
  final Color critial;
}

final dsColorLight = DSColor(
  neutral: DSPaletteScheme.light.neutral,
  success: DSColors.green,
  good: DSColors.green,
);

final dsColorDark = DSColor(
  neutral: DSPaletteScheme.dark.neutral,
  success: DSColors.green.shade700,
  good: DSColors.green.shade700,
);
