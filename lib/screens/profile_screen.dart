import 'package:flutter/material.dart';
import '../shared/widget/custom_navigation_bar.dart';
import 'widget/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ProfileFutureBuilder(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
