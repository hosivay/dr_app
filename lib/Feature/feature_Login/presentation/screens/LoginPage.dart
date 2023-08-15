import 'package:dr_app/Core/widgets/AnimateBackground.dart';
import 'package:dr_app/Core/widgets/Snackbar.dart';
import 'package:dr_app/Feature/feature_Login/GetX/Login_Getx.dart';
import 'package:dr_app/Feature/feature_SignUp/presentation/widgets/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = LoginController();

    return Scaffold(
        body: animateBackground(
            context: context,
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Obx(
                      () {
                        return Lottie.asset(loginController.animation.value,
                            repeat: loginController.isRepeatAnimation.value);
                      },
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                    Obx(() {
                      if (loginController.isSetNumber.value) {
                        return Directionality(
                          textDirection: TextDirection.ltr,
                          child: OtpTextField(
                              numberOfFields: 4,
                              borderColor: Theme.of(context).primaryColor,
                              showFieldAsBox: true,
                              onCodeChanged: (String code) {},
                              onSubmit: (String verificationCode) {
                                //loginController.codeIsTrue(context);
                              }),
                        );
                      } else {
                        return Column(
                          children: [
                            myTextField(
                                controller:
                                    loginController.myTextfieldController,
                                hint: "+98 ___ ___ ____",
                                label: "PhoneNumber".tr,
                                inputFormatters: [
                                  MaskTextInputFormatter(
                                      mask: "+98 ### ### ####")
                                ],
                                keyboardType: TextInputType.phone),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    mySnackBar(title: "شما اکانت ندارید");
                                    // loginController.sendSMS();
                                  },
                                  child: Text("Login".tr)),
                            )
                          ],
                        );
                      }
                    }),
                  ],
                ),
              ),
            )));
  }

  OutlineInputBorder myinputborder() {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blue.shade700,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blueAccent.shade100,
          width: 4,
        ));
  }
}
