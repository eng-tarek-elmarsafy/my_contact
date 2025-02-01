import 'package:flutter/material.dart';
import 'package:my_contats_app/models/user_model.dart';

class UserInfoRow extends StatelessWidget {
  final UserModel? data;
  const UserInfoRow({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundImage: NetworkImage(data!.image),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          data!.name,
          style: const TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
