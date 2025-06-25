import 'package:flutter/material.dart';

import '../../../design_system_export.dart';

/// {@template DSSurfaceSeparator}
/// A widget to simplify the usage of:
/// ```dart
/// DecoratedBox(
///   decoration: BoxDecoration(color: Theme.of(context).dividerColor),
///   child: const SizedBox(
///     height: DSSize.borderThicknessSmall,
///     width: double.infinity,
///   ),
/// ),
///
/// with:
///
/// DSSurfaceSeparator()
///
/// ```
/// {@endtemplate}

class DSSurfaceSeparator extends StatelessWidget {
  /// {@macro DSSurfaceSeparator}
  const DSSurfaceSeparator({super.key}) : _thickness = DSSize.borderThickness;

  /// {@macro DSSurfaceSeparator}
  const DSSurfaceSeparator.small({super.key})
      : _thickness = DSSize.borderThicknessSmall;

  /// {@macro DSSurfaceSeparator}
  const DSSurfaceSeparator.large({super.key})
      : _thickness = DSSize.borderThicknessLarge;

  final double _thickness;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.dSColor.neutral),
      child: SizedBox(
        height: _thickness,
        width: double.infinity,
      ),
    );
  }
}
