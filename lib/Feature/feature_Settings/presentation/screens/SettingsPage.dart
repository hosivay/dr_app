import 'package:dr_app/Config/Theme.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/ActionText.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/Appbar_Settings.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/widgets/SettingsItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            ),
            settingsItem(
              context: context,
              icon: Icons.language,
              title: "زبان",
              actions: [actionText(context,"فارسی")]
            ),
            settingsItem(
              context: context,
              icon: CupertinoIcons.location_solid,
              title: "منطقه",
                  actions: [actionText(context,"شیراز")]
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
                  actions: [actionText(context,"v1.0")]
            ),
            myDivider(),
            settingsItem(
              context: context,
              icon: Icons.logout,
              title: "خارج شدن از اکانت",
              redColor: true
            ),
          ],
        ),
      ),
    );
  }
}
