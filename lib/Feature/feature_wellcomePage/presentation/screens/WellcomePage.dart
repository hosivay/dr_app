import 'dart:ui'; 
import 'package:dr_app/Core/widgets/AnimateBackground.dart';
import 'package:dr_app/Feature/feature_Login/presentation/screens/LoginPage.dart';
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: animateBackground(
        context: context,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
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
          SizedBox(
            height: Get.height / 7,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: Get.width / 2,
              height: Get.width / 2,
              color: Colors.white.withOpacity(0.4),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Get.to(
                                const LoginPage(),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Login".tr),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Sign Up".tr),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
