import 'dart:ui';
import 'package:dr_app/Core/widgets/AppBarNormal.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/ButtonAppBar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    title: appBar_normal(
      context: context,
      title: "Settings".tr,
      icon: CupertinoIcons.gear_alt_fill,
    ),
    actions: [
      ButtonAppBar(
          context: context,
          icon: CupertinoIcons.person_crop_circle_fill,
          title: "Profile".tr,
          onTap: () {}),
    ],
  );
}
