import 'package:design_system/design_system_export.dart';
import 'package:donezy_app/src/modules/common/domain/const/const_strings.dart';
import 'package:donezy_app/src/modules/common/presentation/widgets/bottom_sheet_template.dart';
import 'package:donezy_app/src/modules/note/presentation/pages/create_item_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FloatingBottomNavBar extends StatelessWidget {
  const FloatingBottomNavBar({
    super.key,
    required this.index,
    required this.onTabChange,
  });

  final int index;
  final Function(int) onTabChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: DSSpace.xxSmall,
            vertical: DSSpace.small,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.all(DSProperty.radiusXLarge),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 25,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: GNav(
            backgroundColor: Colors.transparent,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: DSSpace.large,
              vertical: DSSpace.medium,
            ),
            gap: DSSpace.xxSmall,
            tabMargin: EdgeInsets.symmetric(horizontal: DSSpace.xSmall),
            tabBackgroundColor: Theme.of(context).colorScheme.primary,
            activeColor: Theme.of(context).colorScheme.onPrimary,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            tabs: [
              GButton(icon: Icons.notes, text: ConstStrings.notes),
              GButton(icon: Icons.task, text: ConstStrings.tasks),
              GButton(icon: Icons.person, text: ConstStrings.profile),
            ],
            onTabChange: onTabChange,
          ),
        ),
        DSBoxSpace(),
        Material(
          color: Theme.of(
            context,
          ).colorScheme.primary, // Define a cor de fundo para o Material
          borderRadius: BorderRadius.circular(DSSpace.xLarge),
          child: InkWell(
            borderRadius: BorderRadius.circular(DSSpace.xLarge),
            splashColor: Theme.of(context).colorScheme.secondary,
            onTap: () => BottomSheetTemplate.showBottomSheet(
              context,
              child: const CreateItemPage(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(DSSpace.medium),
              child: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
