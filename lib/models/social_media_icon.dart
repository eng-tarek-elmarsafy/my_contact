import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const SocialMediaIcon({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(image),
    );
  }
}