import 'package:flutter/material.dart';
import '../../shared/widget/action_button.dart';
import 'grid_view_bulder.dart';
import 'user_info_row.dart';

class ContactScreenBody extends StatelessWidget {
  const ContactScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          const UserInfoRow(),
          ActionButtonWathIcon(
            titel: 'Add my network',
            onTap: () {},
            icon: Icons.add,
          ),
          const GridViewBulder()
        ],
      ),
    );
  }
}