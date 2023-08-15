import 'package:dr_app/Core/widgets/AnimateBackground.dart';
import 'package:dr_app/Feature/feature_SignUp/GetX/SignUp_Getx.dart';
import 'package:dr_app/Feature/feature_SignUp/presentation/widgets/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = SignUpController();

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
                        return Lottie.asset(
                          signUpController.animation.value,
                          repeat: signUpController.isRepeatAnimation.value,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Obx(() {
                      if (signUpController.isSetNumber.value) {
                        return Directionality(
                          textDirection: TextDirection.ltr,
                          child: OtpTextField(
                              numberOfFields: 4,
                              borderColor: Theme.of(context).primaryColor,
                              showFieldAsBox: true,
                              onCodeChanged: (String code) {},
                              onSubmit: (String verificationCode) =>
                                  signUpController.codeIsTrue(context)),
                        );
                      } else {
                        return Column(
                          children: [
                            myTextField(
                                controller: signUpController.nameController,
                                hint: "NameUser".tr,
                                label: "NameUser".tr,
                                keyboardType: TextInputType.name),
                            myTextField(
                                controller:
                                    signUpController.phoneNumberController,
                                hint: "+98 ___ ___ ____",
                                label: "PhoneNumber".tr,
                                inputFormatters: [
                                  MaskTextInputFormatter(
                                      mask: "+98 ### ### ####")
                                ],
                                keyboardType: TextInputType.phone),
                            myTextField(
                                controller:
                                    signUpController.nationalCodeController,
                                hint: "",
                                label: "NationalCode".tr,
                                inputFormatters: [
                                  MaskTextInputFormatter(mask: "### ### ####")
                                ],
                                keyboardType: TextInputType.phone),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(28),
                                  child: Container(
                                    color: Colors.white.withOpacity(0.8),
                                    width: Get.width / 3,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("age".tr),
                                        SizedBox(
                                          width: 100,
                                          height: 60,
                                          child: myTextField(
                                              controller: signUpController
                                                  .ageController,
                                              hint: "",
                                              label: "",
                                              inputFormatters: [
                                                MaskTextInputFormatter(
                                                    mask: "##")
                                              ],
                                              keyboardType:
                                                  TextInputType.phone),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(28),
                                  child: Container(
                                    color: Colors.white.withOpacity(0.8),
                                    width: Get.width / 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "gender".tr,
                                          ),
                                          DropdownButton<String>(
                                            alignment: Alignment.topCenter,
                                            value: signUpController
                                                .chosenValue.value,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall!
                                                .copyWith(fontSize: 6),
                                            items: <String>[
                                              "man".tr,
                                              "woman".tr,
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (value) =>
                                                signUpController
                                                    .selectItem(value!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () => signUpController.sendSMS(),
                                  child: Text("Sign Up".tr)),
                            ),
                          ],
                        );
                      }
                    }),
                  ],
                ),
              ),
            )));
  }
}
