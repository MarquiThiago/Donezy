import 'package:flutter/material.dart';

class DSPalette {
  const DSPalette(this.primary, this.secondary, this.neutral);
  final MaterialColor primary;
  final MaterialColor secondary;
  final MaterialColor neutral;
}

abstract class DSPaletteScheme {
  static const DSPalette light = DSPalette(primary, secondary, _lightNeutral);
  static const DSPalette dark = DSPalette(primary, secondary, _darkNeutral);

  static const int _primaryStdValue = 0xFF2A6EF4; // Azul botão/flutuante
  static const MaterialColor primary =
      MaterialColor(_primaryStdValue, <int, Color>{
        50: Color(0xFFE8F0FE),
        100: Color(0xFFD0E1FD),
        200: Color(0xFFA1C3FB),
        300: Color(0xFF729EFA),
        400: Color(0xFF4F83F7),
        500: Color(_primaryStdValue),
        600: Color(0xFF225ED8),
        700: Color(0xFF1B52C5),
        800: Color(0xFF1749B0),
        900: Color(0xFF10378A),
      });

  static const int _secondaryPrimaryValue =
      0xFF6D6AF2; // Roxo do calendário selecionado
  static const MaterialColor secondary =
      MaterialColor(_secondaryPrimaryValue, <int, Color>{
        50: Color(0xFFEAEAFE),
        100: Color(0xFFD5D4FD),
        200: Color(0xFFB0AEFB),
        300: Color(0xFF8D89FA),
        400: Color(0xFF736EF8),
        500: Color(_secondaryPrimaryValue),
        600: Color(0xFF5F58DA),
        700: Color(0xFF4D48C2),
        800: Color(0xFF3D3CAB),
        900: Color(0xFF2E2C91),
      });

  static const int _lightNeutralStdValue = 0xFFFFFFFF;
  static const MaterialColor _lightNeutral =
      MaterialColor(_lightNeutralStdValue, <int, Color>{
        0: Color(0xFFFFFFFF),
        50: Color(0xFFF9FAFB),
        100: Color(0xFFF0F1F3),
        200: Color(0xFFE5E7EB),
        300: Color(0xFFD1D5DB),
        400: Color(0xFF9CA3AF),
        500: Color(0xFF6B7280),
        600: Color(0xFF4B5563),
        700: Color(0xFF374151),
        800: Color(0xFF1F2937),
        900: Color(0xFF111827),
      });

  static const int _darkNeutralStdValue = 0xFF141C24;
  static const MaterialColor _darkNeutral =
      MaterialColor(_darkNeutralStdValue, <int, Color>{
        0: Color(0xFF000000),
        50: Color(0xFF1C1C1E),
        100: Color(0xFF2C2C2E),
        200: Color(0xFF3A3A3C),
        300: Color(0xFF48484A),
        400: Color(0xFF636366),
        500: Color(0xFF8E8E93),
        600: Color(0xFFA1A1A3),
        700: Color(0xFFC7C7CC),
        800: Color(0xFFD1D1D6),
        900: Color(0xFFE5E5EA),
      });

  static const success = MaterialColor(0xFF4ADE80, <int, Color>{
    0: Color(0xFFF0FDF4),
    100: Color(0xFFDCFCE7),
    200: Color(0xFFBBF7D0),
    300: Color(0xFF86EFAC),
    400: Color(0xFF4ADE80),
    500: Color(0xFF22C55E),
    600: Color(0xFF16A34A),
    700: Color(0xFF15803D),
    800: Color(0xFF166534),
    900: Color(0xFF14532D),
  });

  static const error = MaterialColor(0xFFEF4444, <int, Color>{
    0: Color(0xFFFFF1F2),
    100: Color(0xFFFFE4E6),
    200: Color(0xFFFECDD3),
    300: Color(0xFFFDA4AF),
    400: Color(0xFFFB7185),
    500: Color(0xFFF43F5E),
    600: Color(0xFFE11D48),
    700: Color(0xFFBE123C),
    800: Color(0xFF9F1239),
    900: Color(0xFF881337),
  });
}
