import 'package:flutter/material.dart';

import '../../models/contact_card_model.dart';
import 'contact_card.dart';

class SingleGroupBody extends StatelessWidget {
  const SingleGroupBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
                'https://www.befunky.com/images/prismic/0d88c466-8c06-4ddc-8534-1047b109136d_features-background-remover4.png?auto=avif,webp&format=jpg&width=581'),
          ),
          ContactCard(
            data: ContactCardModel(
                image:
                    'https://imageupscaler.com/wp-content/uploads/2024/07/deblured-cutty-fox.jpg',
                name: 'Tarek elmarsafy',
                phon: '01091716644'),
          ),
          ContactCard(
            data: ContactCardModel(
                image:
                    'https://imageupscaler.com/wp-content/uploads/2024/07/deblured-cutty-fox.jpg',
                name: 'Tarek elmarsafy',
                phon: '01091716644'),
          ),
          ContactCard(
            data: ContactCardModel(
                image:
                    'https://imageupscaler.com/wp-content/uploads/2024/07/deblured-cutty-fox.jpg',
                name: 'Tarek elmarsafy',
                phon: '01091716644'),
          ),
          ContactCard(
            data: ContactCardModel(
                image:
                    'https://imageupscaler.com/wp-content/uploads/2024/07/deblured-cutty-fox.jpg',
                name: 'Tarek elmarsafy',
                phon: '01091716644'),
          ),
        ],
      ),
    );
  }
}
