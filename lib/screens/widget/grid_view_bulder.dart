import 'package:flutter/material.dart';
import 'package:my_contats_app/models/infosocial_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../models/social_media_icon.dart';

class GridViewBulder extends StatefulWidget {
  const GridViewBulder({
    super.key,
  });

  @override
  State<GridViewBulder> createState() => _GridViewBulderState();
}

class _GridViewBulderState extends State<GridViewBulder> {
  List<InfoSocialModel> infoSocial = [
    InfoSocialModel(
        url: 'https://github.com/eng-tarek-elmarsafy/Notes-App',
        pathIcon: 'assets/media_icons/github.png'),
    InfoSocialModel(
        url:
            'https://www.snapchat.com/add/t_elmarsafy?share_id=nkqfr0AYE50&locale=ar-EG',
        pathIcon: 'assets/media_icons/snapchat.png'),
    InfoSocialModel(
        url: 'https://youtube.com/@tarekel_marsafy4524?si=AoUP09XPUjl-ii6m',
        pathIcon: 'assets/media_icons/youtube.png'),
    InfoSocialModel(
        url: 'https://github.com/', pathIcon: 'assets/media_icons/github.png'),
    InfoSocialModel(
        url: 'https://www.linkedin.com/in/tarek-el-marsafy-92775b259/',
        pathIcon: 'assets/media_icons/linkedin.png'),
    InfoSocialModel(
        url: 'https://wa.me/?01091716644',
        pathIcon: 'assets/media_icons/whatsapp.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.only(top: 16),
        shrinkWrap: true,
        itemCount: infoSocial.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return SocialMediaIcon(
            image: infoSocial[index].pathIcon,
            onTap: () async {
              await launchUrlString(infoSocial[index].url);
            },
          );
        });
  }
}
