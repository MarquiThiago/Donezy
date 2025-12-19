import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/note_detail_page.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String noteId;
  final String title;
  final String description;
  final bool isTask;
  final bool isSelected;
  final DateTime createdAt;
  final VoidCallback? onSelected;

  const ItemCard({
    super.key,
    required this.noteId,
    required this.title,
    required this.description,
    this.isTask = true,
    this.isSelected = true,
    this.onSelected,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => NoteDetailPage(
              noteId: noteId,
              title: title,
              description: description,
              createdAt: createdAt,
            ),
          ),
        );
      },
      child: Card(
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
      ),
    );
  }
}
