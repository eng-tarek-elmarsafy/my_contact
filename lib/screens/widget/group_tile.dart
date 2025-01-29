import 'package:flutter/material.dart';

import '../../shared/themes/colors.dart';
import '../../shared/themes/text.dart';

class GroupTile extends StatelessWidget {
  final String nameAGroup;
  final VoidCallback onTap;
  const GroupTile({
    super.key,
    required this.nameAGroup,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 25,
        ),
        Icon(
          Icons.circle,
          size: 20,
          color: grey,
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          onPressed: onTap, //onTap
          child: Text(
            nameAGroup, //nameAGroup
            style: h3.merge(
              TextStyle(color: grey),
            ),
          ),
        ),
      ],
    );
  }
}
