import 'package:flutter/material.dart';

import '../../shared/themes/text.dart';

class ItemGroupStack extends StatelessWidget {
  const ItemGroupStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQphO1iGa3a8wJpd43zAbREvXa8q4DmAIKww&s',
          ),
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: ColoredBox(
              color: Colors.black.withValues(alpha: 0.3),
              child: const SizedBox.expand(), // عشان يغطي المساحة بالكامل
            ),
          ),
          Center(
            child: Text(
              'WORK',
              style: h2,
            ),
          ),
        ],
      ),
    );
  }
}