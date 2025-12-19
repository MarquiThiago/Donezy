import 'package:design_system/design_system_export.dart';
import 'package:flutter/material.dart';

class NoteDetailPage extends StatelessWidget {
  final String noteId;
  final String title;
  final String description;
  final DateTime createdAt;

  const NoteDetailPage({
    super.key,
    required this.noteId,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(DSSpace.large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              DSBoxSpace(),

              // Created Date
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    _formatDate(createdAt),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              DSBoxSpace.large(),

              // Divider
              DSDivider(),
              DSBoxSpace.large(),

              // Note Description
              Text(
                'Description',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              DSBoxSpace(),
              Text(description, style: Theme.of(context).textTheme.bodyMedium),
              DSBoxSpace.xxxLarge(),

              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Edit functionality coming soon'),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Delete functionality coming soon'),
                          ),
                        );
                      },
                      icon: const Icon(Icons.delete),
                      label: const Text('Delete'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} - ${date.hour}:${date.minute.toString().padLeft(2, '0')}';
  }
}
