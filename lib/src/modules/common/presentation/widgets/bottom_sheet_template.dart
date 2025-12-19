import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/router/app_routes.dart';
import 'package:flutter/material.dart';

class BottomSheetTemplate extends StatelessWidget {
  const BottomSheetTemplate({super.key, this.margin, required this.child});

  final EdgeInsets? margin;
  final Widget child;

  static Future<void> showBottomSheet(
    BuildContext context, {
    required Widget child,
  }) => showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    useRootNavigator: true,

    routeSettings: const RouteSettings(name: AppRoutes.addItemBottomSheet),
    builder: (_) => _AdaptiveAddItemBottomSheet(child: child),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: SingleChildScrollView(child: IntrinsicHeight(child: child)),
        ),
      ],
    );
  }
}

class _AdaptiveAddItemBottomSheet extends StatelessWidget {
  const _AdaptiveAddItemBottomSheet({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.vertical(top: DSProperty.radiusLarge),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom > DSSpace.medium
              ? MediaQuery.viewInsetsOf(context).bottom
              : DSSpace.medium,
        ),
        child: SafeArea(
          child: BottomSheetTemplate(
            margin: EdgeInsets.fromLTRB(
              DSSpace.medium,
              DSSpace.medium,
              DSSpace.medium,
              MediaQuery.viewInsetsOf(context).bottom > DSSpace.medium
                  ? DSSpace.medium
                  : MediaQuery.viewInsetsOf(context).bottom,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
