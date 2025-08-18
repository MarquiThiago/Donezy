import 'package:design_system/design_system_export.dart';
import 'package:flutter/material.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(DSSpace.medium),
          child: Row(
            spacing: DSSpace.large,
            children: [
              CircleAvatar(
                radius: DSSize.iconSizeLarge,
                child: Icon(Icons.person, size: DSSize.iconSizeLarge),
              ),
              Expanded(
                child: Column(
                  spacing: DSSpace.small,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User name',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'user@email.com',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            ],
          ),
        ),
      ],
    );
  }
}
