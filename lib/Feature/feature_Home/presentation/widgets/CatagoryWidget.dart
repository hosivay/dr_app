import 'package:dr_app/Core/utils/Animation.dart';
import 'package:dr_app/assets/images/ImageConstPath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 

// ignore: non_constant_identifier_names
Widget catagory_Widget(
  BuildContext context,
) {
  return SizedBox(
    width: Get.width,
    height: Get.width / 3.3,
    child: ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        categoryItem(
          context: context,
          image: "omomi_icon.png",
          title: "GeneralPractitioner".tr,
        ),categoryItem(
          context: context,
          image: "Tooth_icon.png",
          title: "Dentist".tr,
        ),categoryItem(
          context: context,
          image: "heart_icon.png",
          title: "cardiologist".tr,
        ),categoryItem(
          context: context,
          image: "drBrain_icon.png",
          title: "Neurologist".tr,
        ),
         
      ],
    ),
  );
}

Widget categoryItem(
    {required BuildContext context,
    required String image,
    required String title}) {
  return animationB(
    delay: 1,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: Get.width / 3.8,
          height: Get.width / 3.8,
          color: Theme.of(context).primaryColor.withOpacity(0.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "$pathImage/$image",
                  color: Colors.white,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
