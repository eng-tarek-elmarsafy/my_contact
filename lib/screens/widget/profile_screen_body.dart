import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_contats_app/models/user_model.dart';

import '../../shared/themes/colors.dart';
import '../../shared/widget/action_button.dart';
import 'costom_alert_dialog.dart';
import 'grid_view_bulder.dart';
import 'user_info_row.dart';

class ProfileScreenBody extends StatelessWidget {
  final UserModel data;
  const ProfileScreenBody({super.key, required this.data});

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
            UserInfoRow(
              data: data,
            ),
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

class ProfileFutureBuilder extends StatelessWidget {
  const ProfileFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    DocumentReference<Map<String, dynamic>> ref = FirebaseFirestore.instance
        .collection('Users')
        .doc('6ylnj2YPFucv2EQcZQqX');
    return FutureBuilder(
      future: ref.get(),
      builder: (BuildContext context, snapshot) {
        return ProfileScreenBody(
          data: UserModel.fromMap(snapshot.data?.data() ?? {}),
        );
      },
    );
  }
}
