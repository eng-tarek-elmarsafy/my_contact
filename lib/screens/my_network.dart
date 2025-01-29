import 'package:flutter/material.dart';
import '../shared/widget/custom_navigation_bar.dart';
import 'widget/custom_list_view.dart';

class MyNetwork extends StatelessWidget {
  const MyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const CustomListView(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
