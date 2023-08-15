import 'package:flutter/material.dart';

Widget detailProfile({
  required BuildContext context,
  required String title,
  required String option,
}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        Text(
          "$title: ",
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 20,
              ),
        ),
        Text(
          option,
          textDirection: TextDirection.ltr,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
