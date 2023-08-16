import 'package:dr_app/Config/Localization/LocalizationService.dart';
import 'package:dr_app/Config/Localization/Localization_Getx.dart';
import 'package:dr_app/Feature/feature_SplashScreen/presentation/screens/SplashScreen.dart';
import 'package:dr_app/Feature/feature_wellcomePage/presentation/screens/WellcomePage.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localizationController = Get.put(LocalizationController());
    final savedLocale = localizationController
        .stringToLocale(GetStorage().read("locale") ?? "fa");

    final locale = savedLocale;

    return GetMaterialApp(
      title: 'Dr App',
      theme: FlexThemeData.light(
          fontFamily: 'Vazir', scheme: FlexScheme.blueM3, useMaterial3: true),
      darkTheme: FlexThemeData.dark(
          fontFamily: 'Vazir', scheme: FlexScheme.blueM3, useMaterial3: true),
      themeMode: ThemeMode.system,
      locale: locale,
      translations: LocalizationService(),
      fallbackLocale: localizationController.defaultLocale,
      debugShowCheckedModeBanner: false,
      home: GetStorage().read('isSign') == true
          ? SplashScreenPage()
          : const WellcomePage(),
    );
  }
}
