import 'package:flutter/material.dart';
import 'package:my_contats_app/screens/widget/groups_screen_body.dart';

import '../shared/themes/text.dart';
import '../shared/widget/custom_navigation_bar.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          'Groups',
          style: h3Bold,
        ),
      ),
      body: const GroupsScreenbody(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
