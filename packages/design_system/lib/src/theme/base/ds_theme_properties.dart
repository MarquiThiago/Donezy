part of 'ds_theme.dart';

final _dsButtonStyle = ButtonStyle(
  shape: WidgetStateProperty.all(
    const BeveledRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: DSProperty.radius,
        bottomRight: DSProperty.radius,
      ),
    ),
  ),
  textStyle: WidgetStateProperty.all(
    DSBaseTypography.baseTextTheme.headlineSmall,
  ),
  minimumSize: WidgetStateProperty.all(
    const Size(
      DSSize.materialTapTargetSize * 2,
      DSSize.minButtonVisualHeight,
    ),
  ),
  tapTargetSize: MaterialTapTargetSize.padded,
  padding: WidgetStateProperty.all(
    const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
  ),
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
