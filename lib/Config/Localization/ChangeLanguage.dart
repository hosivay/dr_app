import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Localization_Getx.dart';

Future<dynamic> ChangeLanguage(LocalizationController localizationController) {
  return Get.defaultDialog(
    title: 'Select Language',
    content: Column(
      children: [
        ListTile(
          title: const Text('فارسی'),
          onTap: () {
            localizationController
                .setLocale(localizationController.defaultLocale);
            Get.back();
          },
        ),
        ListTile(
          title: const Text('English'),
          onTap: () {
            localizationController.setLocale(localizationController.enLocale);
            Get.back();
          },
        ),
        
      ],
    ),
  );
}
