import 'dart:ui';
import 'package:dr_app/Core/widgets/AppBarNormal.dart';
import 'package:dr_app/Feature/feature_Nobat/GetX/DropMenuNobat_Getx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
AppBar appbar_NobatPage(BuildContext context) {
  DropMenuNobatController dropMenuNobatController = Get.put(DropMenuNobatController());
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
        icon: CupertinoIcons.calendar,
        title: "appointments".tr),
    actions: [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<DropMenuNobatController>(
          builder: (controller) {
            return SizedBox(
              width: Get.width / 4.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: DropdownButton<String>(
                    alignment: Alignment.topCenter,
                    value: dropMenuNobatController.chosenValue.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 6),
                    items: <String>[
                      "1402" ,
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) => dropMenuNobatController.selectItem(value!),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
