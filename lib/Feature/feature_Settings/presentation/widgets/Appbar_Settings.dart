import 'dart:ui';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/ButtonAppBar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar appbar_SettingsPage(BuildContext context) {
  return AppBar(
    toolbarHeight: 85,
    elevation: 0.2,
    flexibleSpace: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    ),
    title: Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            CupertinoIcons.gear_alt_fill,
            size: 30,
          ),
        ),
        Text(
          "تنظیمات",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    ),
    actions: [
      ButtonAppBar(
          context: context,
          icon: CupertinoIcons.person_crop_circle_fill,
          title: "نمایه",
          onTap: () {}),
    ],
  );
}
