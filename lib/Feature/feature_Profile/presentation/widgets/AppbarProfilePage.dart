import 'package:dr_app/Core/widgets/AppBarNormal.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar appbar_ProfilePage(BuildContext context) {
  return mainAppBar(
    title: appBar_normal(
      context: context,
      title: "Profile".tr,
      icon: CupertinoIcons.person_circle_fill,
    ),
    hideLeading: false,
    actions: [],
  );
}
