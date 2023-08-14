

import 'package:flutter/material.dart';

Widget appBar_normal(
    {required BuildContext context,
    required IconData icon,
    required String title}) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    ],
  );
}