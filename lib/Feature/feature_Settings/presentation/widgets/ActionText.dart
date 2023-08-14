import 'package:flutter/material.dart';

Widget actionText(BuildContext context,String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.grey),),
  );
}
