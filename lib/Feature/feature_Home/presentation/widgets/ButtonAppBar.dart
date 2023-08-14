import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ButtonAppBar(
    {required BuildContext context,
    required IconData icon,
    required String title,
    required Function() onTap
    }) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              icon,
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      ),
    ),
  );
}
