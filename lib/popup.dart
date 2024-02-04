import 'package:flutter/material.dart';

Widget buildPopupDialog(BuildContext context, String title) {
  return AlertDialog(
    title: Text(title),
    content: const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
    //   children: <Widget>[
    //     Text(contentText),
    //   ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}