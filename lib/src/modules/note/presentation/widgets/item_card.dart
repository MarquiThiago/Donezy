import 'package:design_system/design_system_export.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isTask;
  final bool isSelected;
  final VoidCallback? onSelected;

  const ItemCard({
    super.key,
    required this.title,
    required this.description,
    this.isTask = true,
    this.isSelected = true,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: DSSpace.small,
          vertical: DSSpace.medium,
        ),
        child: Row(
          children: [
            if (isTask)
              Checkbox(
                value: isSelected,
                onChanged: (value) => onSelected?.call(),
              ),
            const DSBoxSpace.small(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleSmall),
                  const DSBoxSpace.small(),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
