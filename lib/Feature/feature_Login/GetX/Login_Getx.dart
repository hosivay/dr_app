import 'package:dr_app/Core/widgets/Snackbar.dart';
import 'package:dr_app/Feature/feature_SplashScreen/presentation/screens/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  var isSetNumber = false.obs;
  TextEditingController myTextfieldController = TextEditingController();

  sendSMS() {
    isSetNumber(true);
    mySnackBar(title: "NameApp".tr, message: "Code : 4542", attention: true);
    update();
  }

  codeIsTrue() {
    Future.delayed(const Duration(seconds: 3));
    Get.to( SplashScreenPage(),);
    mySnackBar(
      title:"Wellcome".tr,
      message: "",
    );
  }
}
