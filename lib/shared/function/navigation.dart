import 'package:flutter/material.dart';

void goto({required Widget screens, required BuildContext context}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screens),
  );
}
