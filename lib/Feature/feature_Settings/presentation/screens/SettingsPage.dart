import 'package:dr_app/Config/Localization/Localization_Getx.dart';
import 'package:dr_app/Config/ThemeGetX.dart';
import 'package:dr_app/Core/widgets/Snackbar.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/DoctorList.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/ActionText.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/Appbar_Settings.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/SettingsItem.dart';
import 'package:dr_app/Feature/feature_wellcomePage/presentation/screens/WellcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    final localizationController = Get.put(LocalizationController());
    return Scaffold(
      appBar: appbar_SettingsPage(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            settingsItem(
                context: context,
                icon: CupertinoIcons.moon_fill,
                title: "DarkMode".tr,
                onTap: () {
                  if (Get.isDarkMode) {
                    themeController.changeThemeMode(ThemeModeType.LIGHT);
                  } else {
                    themeController.changeThemeMode(ThemeModeType.DARK);
                  }
                }),
            settingsItem(
                context: context,
                icon: Icons.language,
                title: "Language".tr,
                actions: [],
                onTap: () {
                  Get.defaultDialog(
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
                            Get.updateLocale(
                                localizationController.defaultLocale);
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  );
                }),
            settingsItem(
                context: context,
                icon: CupertinoIcons.location_solid,
                title: "Location".tr,
                actions: [
                  actionText(
                    context,
                    "Shiraz".tr,
                  )
                ],
                onTap: () {
                  mySnackBar(
                    attention: true,
                    title: "LocationAlert".tr,
                  );
                }),
            myDivider(),
            row_doctorList(
              context: context,
              topDoctors: false,
            ),
            myDivider(),
            settingsItem(
                context: context,
                icon: CupertinoIcons.gear_alt_fill,
                title: "Version".tr,
                actions: [actionText(context, "v1.0")]),
            myDivider(),
            settingsItem(
                context: context,
                icon: Icons.logout,
                title: "Logout".tr,
                redColor: true,
                onTap: () {
                  Get.offAll(const WellcomePage());
                }),
          ],
        ),
      ),
    );
  }
}
