import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Localization_Getx.dart';

Future<dynamic> ChangeLanguage(LocalizationController localizationController) {
  return Get.defaultDialog(
    title: 'Select Language',
    content: Column(
      children: [
        ListTile(
          title: const Text('English'),
          onTap: () {
            Get.updateLocale(localizationController.enLocale);
            Get.back();
          },
        ),
        ListTile(
          title: const Text('فارسی'),
          onTap: () {
            Get.updateLocale(localizationController.defaultLocale);
            Get.back();
          },
        ),
      ],
    ),
  );
}
