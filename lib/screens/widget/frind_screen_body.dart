import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../shared/themes/colors.dart';
import '../../shared/widget/action_button.dart';
import 'call_phon.dart';
import 'custom_bottom_sheet.dart';
import 'grid_view_bulder.dart';
import 'user_info_row.dart';

class FriendScreenBody extends StatelessWidget {
  const FriendScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 120,
            ),
            const UserInfoRow(),
            const SizedBox(
              height: 10,
            ),
            ActionButtonWathIcon(
              titel: 'Add to a group',
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: navy,
                  context: context,
                  builder: (context) => const CustomBottomSheet(),
                );
              },
              icon: Icons.add,
            ),
            const SizedBox(
              height: 10,
            ),
            CallPhon(
              phonNumber: '01091716644',
              onTap: () async {
                await launchUrlString('tel://01091716644');
              },
            ),
            const GridViewBulder()
          ],
        ),
      ),
    );
  }
}
