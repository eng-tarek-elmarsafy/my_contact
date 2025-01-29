import 'package:flutter/material.dart';

import '../../shared/themes/text.dart';

class CostomAlertDialog extends StatelessWidget {
  const CostomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Delete profil .',
        style: h4,
      ),
      content: Text(
        'Are you sure you want to delete youre profil ?',
        style: h5,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
