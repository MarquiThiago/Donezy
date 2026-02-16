import 'package:design_system/design_system_export.dart';
import 'package:flutter/material.dart';

class HideAppBar extends StatelessWidget {
  const HideAppBar({
    super.key,
    required this.widget,
    required this.title,
    this.centerTitle = false,
    this.floating = true,
  });

  final Widget widget;
  final String title;
  final bool centerTitle;
  final bool floating;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: DSSpace.medium),
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.search),
              ),
            ),
          ],
          floating: floating,
          centerTitle: centerTitle,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          stretch: false,
          toolbarHeight: kToolbarHeight,
          title: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
        SliverToBoxAdapter(child: widget),
      ],
    );
  }
}
