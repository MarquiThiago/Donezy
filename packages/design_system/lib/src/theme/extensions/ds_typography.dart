import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../base/ds_base_typography.dart';

part 'ds_typography.tailor.dart';

@TailorMixin(
  themeGetter: ThemeGetter.onBuildContext,
)
class DSTypography extends ThemeExtension<DSTypography>
    with _$DSTypographyTailorMixin {
  const DSTypography({required this.example});

  @override
  final TextStyle example;
}

final dsTypographyThemeLight = DSTypography(
  example: DSBaseTypography.exampleText.copyWith(color: Colors.black),
);

final dsTypographyThemeDark = DSTypography(
  example: DSBaseTypography.exampleText.copyWith(color: Colors.white),
);
