part of 'ds_theme.dart';

final _dsButtonStyle = ButtonStyle(
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(borderRadius: BorderRadius.all(DSProperty.radius)),
  ),
  textStyle: WidgetStateProperty.all(
    DSBaseTypography.baseTextTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.bold,
    ),
  ),
  minimumSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
  tapTargetSize: MaterialTapTargetSize.padded,
  padding: WidgetStateProperty.all(
    const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
  ),
  elevation: WidgetStateProperty.all(0),
);
final _dsInputDecoration = InputDecorationTheme(
  border: _dsInputBorder,
  enabledBorder: _dsInputBorder,
  disabledBorder: _dsInputBorder,
  errorBorder: _dsInputBorder,
  focusedBorder: _dsInputBorder,
  focusedErrorBorder: _dsInputBorder,
  hintStyle: DSBaseTypography.baseTextTheme.headlineSmall,
  labelStyle: DSBaseTypography.baseTextTheme.headlineSmall,
  floatingLabelStyle: DSBaseTypography.baseTextTheme.headlineSmall,
  helperMaxLines: 3,
  errorMaxLines: 3,
  contentPadding: const EdgeInsets.all(DSSpace.medium),
);

const _dsInputBorder = OutlineInputBorder(
  borderSide: BorderSide(width: DSSize.borderThickness),
);
