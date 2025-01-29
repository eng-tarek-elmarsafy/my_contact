import 'package:flutter/material.dart';
import 'package:my_contats_app/shared/themes/colors.dart';
import '../shared/widget/custom_navigation_bar.dart';
import 'widget/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: orange),
      ),
      body:const HomeScreenBody(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

