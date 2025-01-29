import 'package:flutter/material.dart';
import '../../shared/themes/text.dart';
import 'widget/single_group_body.dart';

class SingleGroupScreen extends StatelessWidget {
  const SingleGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'WORK',
          style: h3,
        ),
        centerTitle: false,
      ),
      body: const SingleGroupBody(),
    );
  }
}

