import 'package:flutter/material.dart';
import 'package:my_contats_app/shared/themes/text.dart';

import '../themes/colors.dart';

class ActionButtom extends StatelessWidget {
  final double width, length;
  final String titel;
  final VoidCallback onTap;
  final Color? color;
  const ActionButtom({
    super.key,
    required this.titel,
    required this.onTap,
    this.color,
    this.width = 10,
    this.length = 50,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? orange,
        minimumSize: Size(width, length),
      ),
      onPressed: onTap,
      child: Text(
        titel,
        style: h5,
      ),
    );
  }
}

class ActionButtonWathIcon extends StatelessWidget {
  final String titel;
  final IconData icon;
  final VoidCallback onTap;

  const ActionButtonWathIcon({
    super.key,
    required this.titel,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: orange,
        minimumSize: const Size(10, 50),
      ),
      onPressed: onTap,
      label: Text(
        titel,
        style: h5,
      ),
      icon: Icon(
        icon,
        color: white,
        size: 30,
      ),
    );
  }
}
