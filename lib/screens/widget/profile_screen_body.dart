import 'package:flutter/material.dart';

import '../../shared/themes/colors.dart';
import '../../shared/widget/action_button.dart';
import 'costom_alert_dialog.dart';
import 'grid_view_bulder.dart';
import 'user_info_row.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

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
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButtom(color: black, titel: 'Edit Profil', onTap: () {}),
                const SizedBox(
                  width: 30,
                ),
                ActionButtom(
                  color: lightRed,
                  titel: 'Delet Profil',
                  onTap: () {
                    showDialogDelete(context);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            const GridViewBulder()
          ],
        ),
      ),
    );
  }

  void showDialogDelete(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => const CostomAlertDialog(),
    );
  }
}
