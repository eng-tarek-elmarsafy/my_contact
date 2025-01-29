import 'package:flutter/material.dart';

import '../../shared/themes/colors.dart';

class CloseSheetButton extends StatelessWidget {
  const CloseSheetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 150,
        height: 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: grey,
        ),
      ),
    );
  }
}
