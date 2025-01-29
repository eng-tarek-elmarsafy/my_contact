import 'package:flutter/material.dart';

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundColor: Colors.amber,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'User',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
