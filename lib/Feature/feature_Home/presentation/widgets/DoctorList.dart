import 'package:dr_app/Core/database/DoctorsData.dart';
import 'package:dr_app/Feature/feature_Home/GetX/DoctorList_Getx.dart';
import 'package:dr_app/assets/images/ImageConstPath.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget row_doctorList(
    {required BuildContext context, required bool topDoctors}) {
      DoctorListController doctorListController = Get.put(DoctorListController());
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
                child: topDoctors
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("$pathImage/logo.png",
                                width: 70,
                                height: 70,
                                color: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .color),
                          ),
                          Text(
                            "TopDoctors".tr,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.bookmark,
                                size: 70,
                                color: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .color),
                          ),
                          Text(
                            "SavedDoctors".tr,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: Get.width * 2,
              height: 180,
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              child: ListView.builder(
                itemCount: doctorData.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  
                  
                  var name = doctorData[index][doctorListController.getLocale!.value]!["Name"];
                  var specialty = doctorData[index][doctorListController.getLocale!.value]!["Specialty"];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("$pathImage/doctor1.png",
                                  width: 80, height: 80),
                              Text(
                                "$name",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$specialty",
                                style: Theme.of(context).textTheme.labelMedium!,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    ),
  );
}
