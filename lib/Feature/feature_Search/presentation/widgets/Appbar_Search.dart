import 'package:dr_app/Core/widgets/AppBarNormal.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/ButtonAppBar.dart';
import 'package:dr_app/Feature/feature_Search/GetX/DropMenu_Getx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar appbar_SearchPage(BuildContext context) {
  DropMenuController dropMenuController = Get.put(DropMenuController());
  return mainAppBar(
    title: appBar_normal(
      context: context,
      title: "Search".tr,
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
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 6),
                items: <String>[
                  "doctor".tr,
                  "Doctor specialty".tr,
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
          title: "Shiraz".tr,
          onTap: () {}),
    ],
  );
}
