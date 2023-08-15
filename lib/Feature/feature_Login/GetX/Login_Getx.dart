//import 'package:dr_app/Core/widgets/Snackbar.dart';
//import 'package:dr_app/Feature/feature_SplashScreen/presentation/screens/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isSetNumber = false.obs;
  var animation = "lib/assets/lottie/login.json".obs;
  var isRepeatAnimation = false.obs;
  TextEditingController myTextfieldController = TextEditingController();

  // sendSMS() {
  //   isSetNumber(true);
  //   animation.value = "lib/assets/lottie/sendSMS.json";
  //   isRepeatAnimation(true);
  //   Future.delayed(const Duration(seconds: 1), () => isRepeatAnimation(false));
  //   mySnackBar(title: "NameApp".tr, message: "Code : 4542", attention: true);
  //   update();
  // }

  // codeIsTrue(BuildContext context) {
  //   animation.value = "lib/assets/lottie/Tik.json";
  //   isRepeatAnimation(true);
  //   Future.delayed(const Duration(seconds: 1), () => isRepeatAnimation(false));
  //   Future.delayed(
  //       const Duration(seconds: 5),
  //       () => Navigator.pushReplacement(
  //           context,
  //           PageTransition(
  //             SplashScreenPage(),
  //           )));

  //   mySnackBar(
  //     title: "Wellcome".tr,
  //     message: "",
  //   );
  // }
}
