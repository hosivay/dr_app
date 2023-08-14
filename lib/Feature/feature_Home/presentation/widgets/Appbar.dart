import 'dart:ui';

import 'package:dr_app/Core/utils/Animation.dart';
import 'package:dr_app/Feature/feature_Home/GetX/AppBar_Getx.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/ButtonAppBar.dart';
import 'package:dr_app/assets/images/ImageConstPath.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar appbar_HomePage(BuildContext context) {
  AppbarController appbarController = Get.put(AppbarController());
  appbarController.isNameShow();

  return AppBar(
    toolbarHeight: 85,
    flexibleSpace: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    ),
    title: Obx(() {
      return Visibility(
        visible: appbarController.isShowName.value,
        replacement: animationA(
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () => appbarController.isNameShow(),
            child: Row(
              children: [
                Image.asset("$pathImage/logo.png",
                    width: 45,
                    height: 45,
                    color: Theme.of(context).textTheme.headlineSmall!.color),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "دکتر اپ",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        child: animationA(
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () => appbarController.isNameShow(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "سلام",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "حسین ولی پور",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
    }),
    actions: [
      ButtonAppBar(
          context: context,
          icon: CupertinoIcons.location_solid,
          title: "شیراز",
          onTap: () {}),
      ButtonAppBar(
          context: context,
          icon: CupertinoIcons.person_crop_circle_fill,
          title: "نمایه",
          onTap: () {}),
    ],
  );
}
