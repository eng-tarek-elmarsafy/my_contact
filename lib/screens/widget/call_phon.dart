import 'package:flutter/material.dart';

import '../../shared/themes/text.dart';

class CallPhon extends StatelessWidget {
  final String phonNumber;
  final VoidCallback onTap;
  const CallPhon({super.key, required this.phonNumber, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            phonNumber,
            style: h4,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.call,
            size: 40,
          ),
        ],
      ),
    );
  }
}
