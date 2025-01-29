import 'package:flutter/material.dart';
import 'package:my_contats_app/shared/function/navigation.dart';
import 'package:my_contats_app/shared/themes/colors.dart';
import 'package:my_contats_app/shared/themes/text.dart';

import '../../shared/widget/action_button.dart';
import 'onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: navy,
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Image.asset('assets/vector_onbording/on2.png'),
          Text(
            'My network app is the\n best app for\n connecting people.',
            style: h3,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 50),
        child: ActionButtom(
          titel: 'Next',
          onTap: () {
            goto(screens: const Onboarding3(), context: context);
          },
        ),
      ),
    );
  }
}
