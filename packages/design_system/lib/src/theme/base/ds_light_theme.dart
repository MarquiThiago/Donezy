part of 'ds_theme.dart';

final ColorScheme _dsLightColorScheme = const ColorScheme.light().copyWith(
  primary: DSPaletteScheme.light.primary,
  primaryContainer: DSPaletteScheme.light.primary.shade800,
  secondary: DSPaletteScheme.light.secondary.shade600,
  secondaryContainer: DSPaletteScheme.light.secondary.shade900,
  surface: DSPaletteScheme.light.neutral,
  surfaceContainerLow: DSPaletteScheme.light.neutral.shade50,
  surfaceContainerLowest: DSPaletteScheme.light.neutral.shade100,
  surfaceContainerHigh: DSPaletteScheme.light.neutral.shade400,
  surfaceContainerHighest: DSPaletteScheme.light.neutral.shade500,
  error: DSPaletteScheme.error,
  onPrimary: DSPaletteScheme.light.neutral,
  onPrimaryContainer: DSPaletteScheme.light.neutral,
  onSecondary: DSPaletteScheme.light.neutral,
  onSecondaryContainer: DSPaletteScheme.light.neutral,
  onSurface: DSPaletteScheme.light.neutral.shade900,
  onSurfaceVariant: DSPaletteScheme.light.neutral.shade700,
  onError: DSPaletteScheme.light.neutral,
  brightness: Brightness.light,
  scrim: DSPaletteScheme.light.neutral.shade100,
);

final ThemeData _dsLightThemeData = ThemeData.light().copyWith(
  colorScheme: _dsLightColorScheme,
  primaryColor: _dsLightColorScheme.primary,
  primaryColorDark: _dsLightColorScheme.primaryContainer,
  primaryColorLight: _dsLightColorScheme.primary,
  canvasColor: _dsLightColorScheme.scrim,
  scaffoldBackgroundColor: _dsLightColorScheme.scrim,
  appBarTheme: AppBarTheme(
    surfaceTintColor: _dsLightColorScheme.surface,
    backgroundColor: _dsLightColorScheme.surface,
    foregroundColor: _dsLightColorScheme.onSurface,
    centerTitle: true,
    elevation: 0,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: DSPaletteScheme.light.neutral.shade500),
    actionsIconTheme: IconThemeData(
      color: DSPaletteScheme.light.neutral.shade500,
    ),
    titleTextStyle: DSBaseTypography.baseTextTheme.titleSmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
  ),
  textTheme: DSBaseTypography.baseTextTheme.copyWith(
    titleLarge: DSBaseTypography.baseTextTheme.titleLarge!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    titleMedium: DSBaseTypography.baseTextTheme.titleMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    titleSmall: DSBaseTypography.baseTextTheme.titleSmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    headlineLarge: DSBaseTypography.baseTextTheme.headlineLarge!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    headlineMedium: DSBaseTypography.baseTextTheme.headlineMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    headlineSmall: DSBaseTypography.baseTextTheme.headlineSmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    displayLarge: DSBaseTypography.baseTextTheme.displayLarge!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    displayMedium: DSBaseTypography.baseTextTheme.displayMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    displaySmall: DSBaseTypography.baseTextTheme.displaySmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    bodyLarge: DSBaseTypography.baseTextTheme.bodyLarge!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    bodyMedium: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    bodySmall: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    labelLarge: DSBaseTypography.baseTextTheme.labelLarge!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    labelMedium: DSBaseTypography.baseTextTheme.labelMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    labelSmall: DSBaseTypography.baseTextTheme.labelSmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
  ),
  bottomAppBarTheme: BottomAppBarTheme(
    color: _dsLightColorScheme.surface,
    elevation: 0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _dsLightColorScheme.surface,
    selectedItemColor: _dsLightColorScheme.primary,
    unselectedItemColor: DSPaletteScheme.light.neutral.shade500,
    selectedLabelStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: _dsLightColorScheme.primary,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
    ),
    unselectedLabelStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: DSPaletteScheme.light.neutral.shade500,
    ),
    elevation: 0,
    type: BottomNavigationBarType.fixed,
  ),
  tabBarTheme: TabBarThemeData(
    dividerColor: DSPaletteScheme.light.neutral.shade200,
    indicator: ShapeDecoration(
      shape: Border(
        bottom: BorderSide(
          width: DSSize.borderThicknessLarge,
          color: _dsLightColorScheme.primary,
        ),
      ),
    ),
    labelPadding: const EdgeInsets.symmetric(horizontal: DSSpace.medium),
    indicatorSize: TabBarIndicatorSize.tab,
    unselectedLabelColor: DSPaletteScheme.light.neutral.shade500,
    labelColor: _dsLightColorScheme.primary,
    labelStyle: DSBaseTypography.baseTextTheme.headlineSmall!.copyWith(
      color: DSPaletteScheme.light.primary,
    ),
    unselectedLabelStyle: DSBaseTypography.baseTextTheme.headlineSmall!
        .copyWith(color: DSPaletteScheme.light.neutral.shade700),
  ),
  drawerTheme: DrawerThemeData(
    elevation: 0,
    backgroundColor: _dsLightColorScheme.surface,
    shape: const ContinuousRectangleBorder(),
  ),
  listTileTheme: ListTileThemeData(
    iconColor: _dsLightColorScheme.onSurface,
    tileColor: _dsLightColorScheme.surface,
    titleTextStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    subtitleTextStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
  ),
  chipTheme: ChipThemeData(
    color: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return DSPaletteScheme.light.neutral;
      } else if (states.contains(WidgetState.selected)) {
        return _dsLightColorScheme.primary;
      } else {
        return DSPaletteScheme.light.neutral.shade200;
      }
    }),
    backgroundColor: DSPaletteScheme.light.neutral,
    disabledColor: DSPaletteScheme.light.neutral.shade400,
    selectedColor: _dsLightColorScheme.primary,
    secondarySelectedColor: _dsLightColorScheme.secondary,
    padding: const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
    shape: StadiumBorder(
      side: BorderSide(color: DSPaletteScheme.light.neutral),
    ),
    side: BorderSide.none,
    showCheckmark: false,
    iconTheme: IconThemeData(
      color: _dsLightColorScheme.onSurface,
      size: DSSize.iconSizeXSmall,
    ),
    labelStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: DSPaletteScheme.light.neutral.shade500,
    ),
    secondaryLabelStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    brightness: Brightness.light,
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: _dsLightColorScheme.surface,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(DSProperty.radiusLarge),
    ),
    titleTextStyle: DSBaseTypography.baseTextTheme.headlineMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
    contentTextStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsLightColorScheme.onSurface,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: _dsLightColorScheme.surface,
    elevation: 0,
    shape: const ContinuousRectangleBorder(
      borderRadius: BorderRadius.vertical(top: DSProperty.radiusXXLarge),
    ),
  ),
  iconTheme: IconThemeData(color: _dsLightColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _dsLightColorScheme.primary),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: _dsButtonStyle.copyWith(
      elevation: WidgetStateProperty.all(0),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.neutral.shade500;
        } else {
          return DSPaletteScheme.light.neutral.shade100;
        }
      }),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.primary.shade100;
        } else if (states.contains(WidgetState.pressed)) {
          return DSPaletteScheme.light.primary.shade700;
        } else if (states.contains(WidgetState.hovered)) {
          return DSPaletteScheme.light.primary.shade600;
        } else {
          return DSPaletteScheme.light.primary.shade500;
        }
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.primary;
        } else if (states.contains(WidgetState.pressed)) {
          return DSPaletteScheme.light.primary.shade800.withValues(alpha: 0.12);
        } else if (states.contains(WidgetState.hovered)) {
          return DSPaletteScheme.light.primary.shade800.withValues(alpha: 0.08);
        } else {
          return DSPaletteScheme.light.primary.shade800;
        }
      }),
      iconColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.neutral.shade400;
        } else {
          return DSPaletteScheme.light.neutral.shade100;
        }
      }),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: _dsButtonStyle.copyWith(
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.neutral.shade300;
        } else {
          return DSPaletteScheme.light.primary.shade400;
        }
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(
            color: DSPaletteScheme.light.neutral.shade200,
            width: DSSize.borderThickness,
          );
        } else {
          return BorderSide(
            color: DSPaletteScheme.light.primary.shade400,
            width: DSSize.borderThickness,
          );
        }
      }),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: _dsButtonStyle.copyWith(
      backgroundColor: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.primary.withValues(alpha: 0.02);
        } else {
          return DSPaletteScheme.light.primary.withValues(alpha: 0.04);
        }
      }),
      foregroundColor: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.disabled)) {
          return DSPaletteScheme.light.neutral.shade400;
        } else {
          return DSPaletteScheme.light.primary.shade400;
        }
      }),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: _dsLightColorScheme.onPrimary,
    backgroundColor: _dsLightColorScheme.primary,
    elevation: 0,
    focusElevation: 0,
    hoverElevation: 0,
    highlightElevation: 0,
  ),
  snackBarTheme: const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    insetPadding: EdgeInsets.all(DSSpace.small),
  ),
  toggleButtonsTheme: ToggleButtonsThemeData(
    constraints: BoxConstraints.tightFor(
      height: DSBaseTypography.baseTextTheme.bodyMedium?.height ?? 16,
      width: DSSize.materialTapTargetSize * 3,
    ),
    borderRadius: const BorderRadius.all(DSProperty.radius),
    borderWidth: DSSize.borderThicknessLarge,
    selectedBorderColor: _dsLightColorScheme.primary,
    borderColor: DSPaletteScheme.light.neutral[300],
    color: DSPaletteScheme.light.neutral.shade500,
    selectedColor: DSPaletteScheme.light.primary.shade500,
    textStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: DSPaletteScheme.light.neutral.shade500,
      fontWeight: FontWeight.bold,
    ),
  ),
  expansionTileTheme: ExpansionTileThemeData(
    backgroundColor: _dsLightColorScheme.scrim,
    collapsedBackgroundColor: _dsLightColorScheme.surface,
    tilePadding: const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
    expandedAlignment: Alignment.topLeft,
    childrenPadding: const EdgeInsets.all(DSSpace.medium),
    iconColor: _dsLightColorScheme.onSurface,
    collapsedIconColor: _dsLightColorScheme.onSurfaceVariant,
    textColor: _dsLightColorScheme.onSurface,
    collapsedTextColor: _dsLightColorScheme.onSurfaceVariant,
    shape: const ContinuousRectangleBorder(),
    collapsedShape: const ContinuousRectangleBorder(),
  ),
  dividerTheme: DividerThemeData(
    color: DSPaletteScheme.light.neutral[300],
    thickness: DSSize.dividerThickness,
    space: DSSpace.xLarge,
  ),
  inputDecorationTheme: _dsInputDecoration.copyWith(
    errorStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: DSPaletteScheme.error.shade500,
    ),
    enabledBorder: _dsInputDecoration.enabledBorder!.copyWith(
      borderSide: _dsInputDecoration.enabledBorder!.borderSide.copyWith(
        color: DSPaletteScheme.light.neutral.shade400,
      ),
    ),
    errorBorder: _dsInputDecoration.errorBorder!.copyWith(
      borderSide: _dsInputDecoration.errorBorder!.borderSide.copyWith(
        color: DSPaletteScheme.error.shade500,
      ),
    ),
    focusedErrorBorder: _dsInputDecoration.focusedErrorBorder!.copyWith(
      borderSide: _dsInputDecoration.focusedErrorBorder!.borderSide.copyWith(
        color: DSPaletteScheme.error.shade700,
        width: DSSize.borderThicknessLarge,
      ),
    ),
    focusedBorder: _dsInputDecoration.focusedBorder!.copyWith(
      borderSide: _dsInputDecoration.focusedBorder!.borderSide.copyWith(
        color: DSPaletteScheme.light.neutral.shade600,
        width: DSSize.borderThicknessLarge,
      ),
    ),
    disabledBorder: _dsInputDecoration.disabledBorder!.copyWith(
      borderSide: _dsInputDecoration.disabledBorder!.borderSide.copyWith(
        color: DSPaletteScheme.light.neutral.shade200,
      ),
    ),
  ),
  extensions: [
    dsColorLight,
    dsTypographyThemeLight,
  ],
);
