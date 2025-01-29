import 'dart:developer';

import 'package:flutter/material.dart';

import '../../shared/widget/action_button.dart';
import '../../shared/widget/custom_text_filed.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
   final TextEditingController phon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(phon: phon),
          ),
          const SizedBox(
            height: 20,
          ),
          ActionButtom(
            titel: 'Search',
            onTap: () {
              log(phon.text);
              phon.clear();
            },
          ),
        ],
      ),
    );
  }
}
