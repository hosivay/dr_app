import 'dart:ui';

import 'package:dr_app/Core/widgets/AppBarNormal.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/ButtonAppBar.dart';
import 'package:dr_app/Feature/feature_Search/GetX/DropMenu_Getx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar appbar_SearchPage(BuildContext context) {
  DropMenuController dropMenuController = Get.put(DropMenuController());
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
      title: "جستجو",
      icon: CupertinoIcons.search,
    ),
    actions: [
      GetX<DropMenuController>(
        builder: (controller) {
          return SizedBox(
            width: Get.width / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                alignment: Alignment.topCenter,
                value: dropMenuController.chosenValue.value,
                items: <String>[
                  'دکتر',
                  'تخصص',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  );
                }).toList(),
                onChanged: (value) => dropMenuController.selectItem(value!),
              ),
            ),
          );
        },
      ),
      ButtonAppBar(
          context: context,
          icon: CupertinoIcons.location_solid,
          title: "شیراز",
          onTap: () {}),
    ],
  );
}
