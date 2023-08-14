import 'package:dr_app/Core/utils/Animation.dart';
import 'package:dr_app/Feature/feature_Home/data/CatagoryData.dart';
import 'package:dr_app/assets/images/ImageConstPath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
Widget catagory_Widget() {
  return SizedBox(
    width: Get.width,
    height: Get.width / 3.5,
    child: ListView.builder(
      itemCount: catagoryData.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return animationB(
          delay: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: Get.width / 4,
                height: Get.width / 4,
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "$pathImage/${catagoryData[index]["image"]!}",
                        color: Colors.white,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text(
                      catagoryData[index]["title"].toString(),
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
