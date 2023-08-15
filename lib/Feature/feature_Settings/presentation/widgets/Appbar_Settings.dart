import 'package:dr_app/Core/widgets/AppBarNormal.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/ButtonAppBar.dart';
import 'package:dr_app/Feature/feature_Profile/presentation/screens/ProfilePage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar appbar_SettingsPage(BuildContext context) {
  return mainAppBar(
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
          onTap: () {
            Get.to(const ProfilePage());
          }),
    ],
  );
}
