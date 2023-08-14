import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:dr_app/Feature/feature_Home/presentation/screens/HomePage.dart';
import 'package:dr_app/Feature/feature_Nobat/presentation/screens/NobatPage.dart';
import 'package:dr_app/Feature/feature_Search/presentation/screens/SearchPage.dart';
import 'package:dr_app/Feature/feature_Settings/presentation/screens/SettingsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../GetX/Nav_Getx.dart';

class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({Key? key});

  @override
  Widget build(BuildContext context) {
    NavController navController = Get.put(NavController());
    var pages = [
      const HomePage(),
      const SearchPage(),
      const NobatPage(),
      const SettingsPage()
    ];
    return Scaffold(
      body: GetBuilder<NavController>(
        builder: (controller) {
          return PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) => navController.changePage(index),
            controller: controller.appPageController,
            children: pages,
          );
        },
      ),
      bottomNavigationBar: GetBuilder<NavController>(
        builder: (controller) {
          return BottomBarDefault(
            items:  [
              TabItem(
                icon: CupertinoIcons.home,
                title: "Home".tr,
              ),
              TabItem(
                icon: CupertinoIcons.search,
                title: "Search".tr,
              ),
              TabItem(
                icon: CupertinoIcons.calendar,
                title: "appointments".tr,
              ),
              TabItem(
                icon: CupertinoIcons.gear,
                title: "Settings".tr,
              ),
            ],
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            color: Colors.grey,
            colorSelected: Theme.of(context).primaryColor,
            indexSelected: controller.visit,
            onTap: (int index) => navController.changePage(index),
          );
        },
      ),
    );
  }
}
