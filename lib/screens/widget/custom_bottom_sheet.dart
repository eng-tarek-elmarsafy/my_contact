import 'package:flutter/material.dart';
import 'close_sheet_button.dart';
import 'group_tile.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 10,
        ),
        const CloseSheetButton(),
        const SizedBox(
          height: 50,
        ),
        GroupTile(
          nameAGroup: 'WORK',
          onTap: () {},
        ),
        GroupTile(
          nameAGroup: 'COOLKEGE',
          onTap: () {},
        ),
        GroupTile(
          nameAGroup: 'CLUB',
          onTap: () {},
        ),
        GroupTile(
          nameAGroup: 'EVENT',
          onTap: () {},
        ),
      ],
    );
  }
}
