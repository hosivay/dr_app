import 'dart:ui';
import 'package:dr_app/Config/Localization/ChangeLanguage.dart';
import 'package:dr_app/Config/Localization/Localization_Getx.dart';
import 'package:dr_app/Core/widgets/AnimateBackground.dart';
import 'package:dr_app/Feature/feature_Login/presentation/screens/LoginPage.dart';
import 'package:dr_app/Feature/feature_SignUp/presentation/screens/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizationController = Get.put(LocalizationController());
    return Scaffold(
      body: animateBackground(
        context: context,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(9, 35, 9, 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      ChangeLanguage(localizationController);
                    },
                    icon: const Icon(
                      Icons.translate,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: Get.height / 1.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "lib/assets/images/logo.png",
                        width: 150,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  "NameApp".tr,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(
                          const LoginPage(),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Login".tr),
                      )),
                  Container(width: 1, height: 20, color: Colors.grey),
                  TextButton(
                      onPressed: () {
                        Get.to(
                          const SignUpPage(),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sign Up".tr),
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
