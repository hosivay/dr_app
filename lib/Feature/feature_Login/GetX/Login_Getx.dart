import 'package:dr_app/Core/widgets/Snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../feature_NavigationPage/presentation/screens/Nav.dart';

class LoginController extends GetxController {
  var isSetNumber = false.obs;
  TextEditingController myTextfieldController = TextEditingController();

  sendSMS() {
    isSetNumber(true);
    mySnackBar(title: "دکتر اپ", message: "کد : 4542", attention: true);
    update();
  }

  codeIsTrue() {
    Future.delayed(const Duration(seconds: 3));
    Get.offAll(const NavigationBarPage());
     mySnackBar(title: "خوش آمدید", message: "", );
     
  }
}
