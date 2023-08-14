import 'package:dr_app/assets/images/ImageConstPath.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget row_doctorList(
  {
    required BuildContext context,
    required bool topDoctors
  }
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: 
              topDoctors ?
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("$pathImage/logo.png",
                        width: 70,
                        height: 70,
                        color: Theme.of(context).textTheme.labelLarge!.color),
                  ),
                  Text(
                    "TopDoctors".tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ):
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.bookmark ,
                        size: 70, 
                        color: Theme.of(context).textTheme.labelLarge!.color),
                  ),
                  Text(
                    "SavedDoctors".tr,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: Get.width * 2,
              height: 180,
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              child: const Row(children: []),
            ),
          )
        ],
      ),
    ),
  );
}
