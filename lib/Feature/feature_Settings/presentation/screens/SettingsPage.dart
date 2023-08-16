import 'package:dr_app/Config/Localization/ChangeLanguage.dart';
import 'package:dr_app/Config/Localization/Localization_Getx.dart';
import 'package:dr_app/Config/ThemeGetX.dart';
import 'package:dr_app/Config/Version.dart';
import 'package:dr_app/Core/widgets/Snackbar.dart';
import 'package:dr_app/Feature/feature_Home/presentation/widgets/DoctorList.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/ActionText.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/Appbar_Settings.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/SettingsItem.dart';
import 'package:dr_app/Feature/feature_wellcomePage/presentation/screens/WellcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
                icon: Icons.translate,
                title: "Language".tr,
                actions: [],
                onTap: () {
                  ChangeLanguage(localizationController);
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
                actions: [actionText(context, Version)]),
            myDivider(),
            settingsItem(
                context: context,
                icon: Icons.logout,
                title: "Logout".tr,
                redColor: true,
                onTap: () async{
                 await GetStorage().remove('UserData');
                 await GetStorage().remove('isSign');
                  Get.offAll(const WellcomePage());
                }),
          ],
        ),
      ),
    );
  }
}
