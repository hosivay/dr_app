import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ThemeModeType {
  LIGHT,
  DARK,
  SYSTEM,
}

class ThemeController extends GetxController {
  var currentThemeMode = ThemeModeType.SYSTEM.obs;

  void changeThemeMode(ThemeModeType newMode) {
    currentThemeMode.value = newMode;
    Get.changeThemeMode(_getThemeMode(newMode));
  }

  ThemeMode _getThemeMode(ThemeModeType mode) {
    switch (mode) {
      case ThemeModeType.LIGHT:
        return ThemeMode.light;
      case ThemeModeType.DARK:
        return ThemeMode.dark;
      case ThemeModeType.SYSTEM:
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }
}

Widget myDivider() => const Divider(endIndent: 40, indent: 40, thickness: 0.5);
