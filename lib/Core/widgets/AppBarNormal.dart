import 'dart:ui';

import 'package:flutter/material.dart';

AppBar mainAppBar({required Widget title, List<Widget>? actions,bool? hideLeading = true}) {
  return AppBar(
    leading: hideLeading! ? const SizedBox(
      height: 0,
    ): null,
    leadingWidth:hideLeading ?  0 : null,
    toolbarHeight: 85,
    flexibleSpace: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    ),
    title: title,
    actions: actions,
  );
}

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
