import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../screens/groups_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/my_network.dart';
import '../../screens/profile_screen.dart';
import '../function/navigation.dart';
import '../themes/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });
  static int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: orange,
      unselectedItemColor: grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.earthAmericas),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userGroup),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userLarge),
          label: 'Home',
        ),
      ],
      onTap: (value) {
        if (value == 0) {
          index = value;
          goto(screens: const HomeScreen(), context: context);
        }
        if (value == 1) {
          index = value;
          goto(screens: const MyNetwork(), context: context);
        }
        if (value == 2) {
          index = value;
          goto(screens: const GroupsScreen(), context: context);
        }
        if (value == 3) {
          index = value;
          goto(screens: const ProfileScreen(), context: context);
        }
      },
    );
  }
}