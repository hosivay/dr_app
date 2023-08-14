import 'package:dr_app/Feature/feature_NavigationPage/presentation/screens/Nav.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dr App',
      theme: FlexThemeData.light(
          fontFamily: 'Vazir', scheme: FlexScheme.blueM3, useMaterial3: true),
      darkTheme: FlexThemeData.dark(
          fontFamily: 'Vazir', scheme: FlexScheme.blueM3, useMaterial3: true),
      themeMode: ThemeMode.system,
      locale: const Locale('fa', 'IR'),
      debugShowCheckedModeBanner: false,
      home: const NavigationBarPage(),
    );
  }
}
