import 'package:flutter/material.dart';
import 'package:my_contats_app/shared/themes/text.dart';

import '../../models/contact_card_model.dart';

class ContactCard extends StatelessWidget {
  final ContactCardModel data;

  const ContactCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 37.5,
            backgroundImage: NetworkImage(
              data.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  data.name,
                  style: title1,
                ),
                Text(
                  data.phon,
                  style: title1.merge(const TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
