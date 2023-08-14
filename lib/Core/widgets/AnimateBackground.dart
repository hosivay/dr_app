import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

Widget animateBackground(
    {required BuildContext context, required Widget child}) {
  return AnimateGradient(
      primaryBegin: Alignment.centerRight,
      animateAlignments: true,
      primaryColors: [
        Theme.of(context).primaryColor,
        Theme.of(context).primaryColor.withOpacity(0.8),
        Theme.of(context).primaryColor.withOpacity(0.6), 
      ],
      secondaryColors: [
        Theme.of(context).primaryColor,
        Theme.of(context).primaryColor.withOpacity(0.5), 
        Theme.of(context).colorScheme.background,
      ],
      child: child);
}
