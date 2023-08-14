import 'package:dr_app/Feature/feature_Search/GetX/AnimationSearch_Getx.dart';
import 'package:dr_app/Feature/feature_Search/GetX/DropMenu_Getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget SearchField(BuildContext context) {
  DropMenuController dropMenuController = Get.put(DropMenuController());
      AnimationSearchController animationSearchController =
        Get.put(AnimationSearchController());
  return ClipRRect(
    borderRadius: BorderRadius.circular(60),
    child: Container(
      width: Get.width / 1.2,
      height: 50,
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      child: GetX<DropMenuController>(
        builder: (controller) {
          return TextField(
            keyboardType: TextInputType.text,
            onChanged: (value) =>animationSearchController.repeatON(),
            decoration: InputDecoration(
              hintText:
                  "Search by".tr+" ${dropMenuController.chosenValue.value}",

            ),
          );
        },
      ),
    ),
  );
}
