import 'package:dr_app/Config/ThemeGetX.dart';
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
    return Scaffold(
      appBar: appbar_SettingsPage(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            settingsItem(
                context: context,
                icon: CupertinoIcons.moon_fill,
                title: "حالت شب",
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
                title: "زبان",
                actions: [actionText(context, "فارسی")]),
            settingsItem(
                context: context,
                icon: CupertinoIcons.location_solid,
                title: "منطقه",
                actions: [actionText(context, "شیراز")]),
            myDivider(),
            row_doctorList(
              context: context,
              topDoctors: false,
            ),
            myDivider(),
            settingsItem(
              context: context,
              icon: CupertinoIcons.person_circle_fill,
              title: "برنامه نویس : Hosivay",
            ),
            settingsItem(
                context: context,
                icon: CupertinoIcons.gear_alt_fill,
                title: "نسخه اپلیکیشن",
                actions: [actionText(context, "v1.0")]),
            myDivider(),
            settingsItem(
                context: context,
                icon: Icons.logout,
                title: "خارج شدن از اکانت",
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
