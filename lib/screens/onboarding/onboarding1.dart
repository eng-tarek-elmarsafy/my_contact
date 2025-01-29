import 'package:flutter/material.dart';
import 'package:my_contats_app/shared/function/navigation.dart';
import 'package:my_contats_app/shared/themes/colors.dart';
import '../../shared/widget/action_button.dart';
import 'onboarding2.dart';
import 'widget/onboarding1_body.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: navy,
      body: const Onboarding1Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 50),
        child: ActionButtom(
          titel: 'Next',
          onTap: () {
            goto(screens: const Onboarding2(), context: context);
          },
        ),
      ),
    );
  }
}
