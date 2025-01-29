import 'package:flutter/material.dart';

import '../../models/contact_card_model.dart';
import 'contact_card.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<ContactCardModel> contactCardList = [
    ContactCardModel(
        image:
            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
        name: 'Tarek Hamada',
        phon: '01091716644'),
    ContactCardModel(
        image:
            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
        name: 'Tarek Hamada',
        phon: '01091716644'),
    ContactCardModel(
        image:
            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
        name: 'Tarek Hamada',
        phon: '01091716644'),
    ContactCardModel(
        image:
            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
        name: 'Tarek Hamada',
        phon: '01091716644'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactCardList.length,
      itemBuilder: (context, index) {
        return ContactCard(
          data: contactCardList[index],
        );
      },
    );
  }
}
