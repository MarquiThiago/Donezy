part of 'ds_theme.dart';

final ColorScheme _dsDarkColorScheme = const ColorScheme.dark().copyWith(
  primary: DSPaletteScheme.dark.primary.shade400,
  primaryContainer: DSPaletteScheme.dark.primary.shade800,
  secondary: DSPaletteScheme.dark.secondary.shade600,
  secondaryContainer: DSPaletteScheme.dark.secondary.shade900,
  surface: DSPaletteScheme.dark.neutral.shade50,
  surfaceContainerLow: DSPaletteScheme.dark.neutral.shade200,
  surfaceContainerLowest: DSPaletteScheme.dark.neutral.shade300,
  surfaceContainerHigh: DSPaletteScheme.dark.neutral.shade800,
  surfaceContainerHighest: DSPaletteScheme.dark.neutral.shade900,
  error: DSPaletteScheme.error,
  onPrimary: DSPaletteScheme.dark.neutral.shade900,
  onPrimaryContainer: DSPaletteScheme.dark.neutral.shade900,
  onSecondary: DSPaletteScheme.dark.neutral.shade900,
  onSecondaryContainer: DSPaletteScheme.dark.neutral.shade900,
  onSurface: DSPaletteScheme.dark.neutral.shade900,
  onSurfaceVariant: DSPaletteScheme.dark.neutral.shade800,
  onError: DSPaletteScheme.dark.neutral.shade900,
  brightness: Brightness.dark,
  scrim: DSPaletteScheme.dark.neutral[0],
);

final ThemeData _dsDarkThemeData = ThemeData.dark().copyWith(
  colorScheme: _dsDarkColorScheme,
  primaryColor: _dsDarkColorScheme.primary,
  primaryColorDark: _dsDarkColorScheme.primaryContainer,
  primaryColorLight: _dsDarkColorScheme.primary,
  canvasColor: _dsDarkColorScheme.scrim,
  scaffoldBackgroundColor: _dsDarkColorScheme.scrim,
  appBarTheme: AppBarTheme(
    surfaceTintColor: _dsDarkColorScheme.surface,
    backgroundColor: _dsDarkColorScheme.surface,
    foregroundColor: _dsDarkColorScheme.onSurface,
    centerTitle: true,
    elevation: 0,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: DSPaletteScheme.dark.neutral.shade600),
    actionsIconTheme: IconThemeData(
      color: DSPaletteScheme.dark.neutral.shade600,
    ),
    titleTextStyle: DSBaseTypography.baseTextTheme.titleSmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
  ),
  textTheme: DSBaseTypography.baseTextTheme.copyWith(
    titleLarge: DSBaseTypography.baseTextTheme.titleLarge!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    titleMedium: DSBaseTypography.baseTextTheme.titleMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    titleSmall: DSBaseTypography.baseTextTheme.titleSmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    headlineLarge: DSBaseTypography.baseTextTheme.headlineLarge!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    headlineMedium: DSBaseTypography.baseTextTheme.headlineMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    headlineSmall: DSBaseTypography.baseTextTheme.headlineSmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    displayLarge: DSBaseTypography.baseTextTheme.displayLarge!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    displayMedium: DSBaseTypography.baseTextTheme.displayMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    displaySmall: DSBaseTypography.baseTextTheme.displaySmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    bodyLarge: DSBaseTypography.baseTextTheme.bodyLarge!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    bodyMedium: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    bodySmall: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    labelLarge: DSBaseTypography.baseTextTheme.labelLarge!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    labelMedium: DSBaseTypography.baseTextTheme.labelMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    labelSmall: DSBaseTypography.baseTextTheme.labelSmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
  ),
  bottomAppBarTheme: BottomAppBarTheme(
    color: _dsDarkColorScheme.surface,
    elevation: 0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _dsDarkColorScheme.surface,
    selectedItemColor: _dsDarkColorScheme.primary,
    unselectedItemColor: DSPaletteScheme.dark.neutral.shade600,
    selectedLabelStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: _dsDarkColorScheme.primary,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.25,
    ),
    unselectedLabelStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: DSPaletteScheme.dark.neutral.shade600,
    ),
    elevation: 0,
    type: BottomNavigationBarType.fixed,
  ),
  tabBarTheme: TabBarThemeData(
    dividerColor: DSPaletteScheme.dark.neutral.shade200,
    indicator: ShapeDecoration(
      shape: Border(
        bottom: BorderSide(
          width: DSSize.borderThicknessLarge,
          color: _dsDarkColorScheme.primary,
        ),
      ),
    ),
    labelPadding: const EdgeInsets.symmetric(horizontal: DSSpace.medium),
    indicatorSize: TabBarIndicatorSize.tab,
    unselectedLabelColor: DSPaletteScheme.dark.neutral.shade600,
    labelColor: _dsDarkColorScheme.primary,
    labelStyle: DSBaseTypography.baseTextTheme.headlineSmall!.copyWith(
      color: DSPaletteScheme.dark.primary,
    ),
    unselectedLabelStyle: DSBaseTypography.baseTextTheme.headlineSmall!
        .copyWith(color: DSPaletteScheme.dark.neutral.shade500),
  ),
  drawerTheme: DrawerThemeData(
    elevation: 0,
    backgroundColor: _dsDarkColorScheme.surface,
    shape: const ContinuousRectangleBorder(),
  ),
  listTileTheme: ListTileThemeData(
    iconColor: _dsDarkColorScheme.onSurface,
    tileColor: _dsDarkColorScheme.surface,
    titleTextStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    subtitleTextStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
  ),
  chipTheme: ChipThemeData(
    color: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return DSPaletteScheme.dark.neutral;
      } else if (states.contains(WidgetState.selected)) {
        return _dsDarkColorScheme.primary;
      } else {
        return DSPaletteScheme.dark.neutral.shade200;
      }
    }),
    backgroundColor: DSPaletteScheme.dark.neutral,
    disabledColor: DSPaletteScheme.dark.neutral.shade400,
    selectedColor: _dsDarkColorScheme.primary,
    secondarySelectedColor: _dsDarkColorScheme.secondary,
    padding: const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
    shape: StadiumBorder(side: BorderSide(color: DSPaletteScheme.dark.neutral)),
    side: BorderSide.none,
    showCheckmark: false,
    iconTheme: IconThemeData(
      color: _dsDarkColorScheme.onSurface,
      size: DSSize.iconSizeXSmall,
    ),
    labelStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: DSPaletteScheme.dark.neutral.shade500,
    ),
    secondaryLabelStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    brightness: Brightness.dark,
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: _dsDarkColorScheme.surface,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(DSProperty.radiusLarge),
      side: BorderSide(color: DSPaletteScheme.dark.neutral.shade200),
    ),
    titleTextStyle: DSBaseTypography.baseTextTheme.headlineMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
    contentTextStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: _dsDarkColorScheme.onSurface,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: _dsDarkColorScheme.surface,
    elevation: 0,
    shape: const ContinuousRectangleBorder(
      borderRadius: BorderRadius.vertical(top: DSProperty.radiusXXLarge),
    ),
  ),
  iconTheme: IconThemeData(color: _dsDarkColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _dsDarkColorScheme.primary),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: _dsButtonStyle.copyWith(
      elevation: WidgetStateProperty.all(0),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.neutral.shade500;
        } else {
          return DSPaletteScheme.dark.neutral.shade900;
        }
      }),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.neutral.shade200;
        } else if (states.contains(WidgetState.pressed)) {
          return DSPaletteScheme.dark.primary.shade700;
        } else if (states.contains(WidgetState.hovered)) {
          return DSPaletteScheme.dark.primary.shade600;
        } else {
          return DSPaletteScheme.dark.primary;
        }
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.primary;
        } else if (states.contains(WidgetState.pressed)) {
          return DSPaletteScheme.dark.primary.shade300.withValues(alpha: 0.15);
        } else if (states.contains(WidgetState.hovered)) {
          return DSPaletteScheme.dark.primary.shade300.withValues(alpha: 0.1);
        } else {
          return DSPaletteScheme.dark.primary.shade300;
        }
      }),
      iconColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.neutral.shade500;
        } else {
          return DSPaletteScheme.dark.neutral[900];
        }
      }),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: _dsButtonStyle.copyWith(
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.neutral.shade500;
        } else {
          return DSPaletteScheme.dark.primary;
        }
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(
            color: DSPaletteScheme.dark.neutral.shade500,
            width: DSSize.borderThicknessLarge,
          );
        } else {
          return BorderSide(
            color: DSPaletteScheme.dark.primary,
            width: DSSize.borderThicknessLarge,
          );
        }
      }),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: _dsButtonStyle.copyWith(
      foregroundColor: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.neutral.shade500;
        } else {
          return DSPaletteScheme.dark.primary.shade400;
        }
      }),
      backgroundColor: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.disabled)) {
          return DSPaletteScheme.dark.primary.withValues(alpha: 0.075);
        } else {
          return DSPaletteScheme.dark.primary.withValues(alpha: 0.15);
        }
      }),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: _dsDarkColorScheme.onPrimary,
    backgroundColor: _dsDarkColorScheme.primary,
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
    selectedBorderColor: _dsDarkColorScheme.primary,
    borderColor: DSPaletteScheme.dark.neutral.shade300,
    color: DSPaletteScheme.dark.neutral.shade700,
    selectedColor: DSPaletteScheme.dark.primary.shade400,
    textStyle: DSBaseTypography.baseTextTheme.bodyMedium!.copyWith(
      color: DSPaletteScheme.dark.neutral.shade700,
      fontWeight: FontWeight.bold,
    ),
  ),
  expansionTileTheme: ExpansionTileThemeData(
    backgroundColor: _dsDarkColorScheme.scrim,
    collapsedBackgroundColor: _dsDarkColorScheme.surface,
    tilePadding: const EdgeInsets.symmetric(
      horizontal: DSSpace.medium,
      vertical: DSSpace.small,
    ),
    expandedAlignment: Alignment.topLeft,
    childrenPadding: const EdgeInsets.all(DSSpace.medium),
    iconColor: _dsDarkColorScheme.onSurface,
    collapsedIconColor: _dsDarkColorScheme.onSurfaceVariant,
    textColor: _dsDarkColorScheme.onSurface,
    collapsedTextColor: _dsDarkColorScheme.onSurfaceVariant,
    shape: const ContinuousRectangleBorder(),
    collapsedShape: const ContinuousRectangleBorder(),
  ),
  dividerTheme: DividerThemeData(
    color: DSPaletteScheme.dark.neutral.shade300,
    thickness: DSSize.dividerThickness,
    space: DSSpace.xLarge,
  ),
  inputDecorationTheme: _dsInputDecoration.copyWith(
    errorStyle: DSBaseTypography.baseTextTheme.bodySmall!.copyWith(
      color: DSPaletteScheme.error.shade700,
    ),
    enabledBorder: _dsInputDecoration.enabledBorder!.copyWith(
      borderSide: _dsInputDecoration.enabledBorder!.borderSide.copyWith(
        color: DSPaletteScheme.dark.neutral.shade600,
      ),
    ),
    errorBorder: _dsInputDecoration.errorBorder!.copyWith(
      borderSide: _dsInputDecoration.errorBorder!.borderSide.copyWith(
        color: DSPaletteScheme.error.shade300,
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
        color: DSPaletteScheme.dark.neutral.shade800,
        width: DSSize.borderThicknessLarge,
      ),
    ),
    disabledBorder: _dsInputDecoration.disabledBorder!.copyWith(
      borderSide: _dsInputDecoration.disabledBorder!.borderSide.copyWith(
        color: DSPaletteScheme.dark.neutral.shade200,
      ),
    ),
  ),
  extensions: [dsColorDark, dsTypographyThemeDark],
);
