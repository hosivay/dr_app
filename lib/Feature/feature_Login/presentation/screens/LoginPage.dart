import 'package:dr_app/Core/widgets/AnimateBackground.dart';
import 'package:dr_app/Feature/feature_Login/GetX/Login_Getx.dart';
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
                    Lottie.network(
                        'https://lottie.host/abe1357f-a83f-43fd-9371-7287609dd766/j9XC6KfEFk.json',
                        repeat: false),
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
                              onSubmit: (String verificationCode) =>
                                  loginController.codeIsTrue()),
                        );
                      } else {
                        return Column(
                          children: [
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 8),
                                child: TextField(
                                  controller:
                                      loginController.myTextfieldController,
                                  textDirection: TextDirection.ltr,
                                  inputFormatters: [
                                    MaskTextInputFormatter(
                                        mask: "+98 ### ### ####")
                                  ],
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      hintText: "+98 ___ ___ ____",
                                      enabledBorder: myinputborder(),
                                      focusedBorder: myfocusborder(),
                                      fillColor: Colors.white.withOpacity(0.8),
                                      filled: true),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () => loginController.sendSMS(),
                                  child: const Text("ورود")),
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
    return  OutlineInputBorder(
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
