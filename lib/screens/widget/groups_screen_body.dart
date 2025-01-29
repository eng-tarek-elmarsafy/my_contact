import 'package:flutter/material.dart';
import 'package:my_contats_app/screens/widget/item_group_stack.dart';

class GroupsScreenbody extends StatelessWidget {
  const GroupsScreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 40,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const ItemGroupStack();
      },
    );
  }
}
