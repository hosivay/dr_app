import 'package:dr_app/Feature/feature_Nobat/data/NobatData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget NobatisEmptyWidget(BuildContext context, String title) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Row(
          children: [
            Container(
              width: Get.width / 7.3,
              height: 1,
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .color!
                  .withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Container(
              width: Get.width / 2.2,
              height: 1,
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .color!
                  .withOpacity(0.5),
            ),
          ],
        ),
      ),
      const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("خالی"),
        ),
      ),
    ],
  );
}

Widget NobatIsNotEmptyWidget(
    BuildContext context, String title, year enum_year) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Row(
          children: [
            Container(
              width: Get.width / 7.3,
              height: 1,
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .color!
                  .withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Container(
              width: Get.width / 2.2,
              height: 1,
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .color!
                  .withOpacity(0.5),
            ),
          ],
        ),
      ),
      ListView.builder(
          itemCount: getYearLength(enum_year),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 65,
                          height: 65,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          child: const Icon(
                            CupertinoIcons.person,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getDataYear(enum_year)[index]["DoctorName"]
                              .toString(),
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          getDataYear(enum_year)[index]["Expertise"].toString(),
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 10),
                  child: Row(
                    children: [
                      Text(
                        "تاریخ و ساعت :",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${getDataYear(enum_year)[index]["date"]} | ${getDataYear(enum_year)[index]["clock"]}',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(fontSize: 19),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
              ],
            );
          })
    ],
  );
}
