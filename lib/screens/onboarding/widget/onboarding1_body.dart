import 'package:flutter/material.dart';

import '../../../shared/themes/text.dart';

class Onboarding1Body extends StatelessWidget {
  const Onboarding1Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Image.asset('assets/vector_onbording/on1.png'),
        Text(
          'My network app is the\n best app for\n connecting people.',
          style: h3,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}