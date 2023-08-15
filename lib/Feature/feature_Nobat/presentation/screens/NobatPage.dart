import 'package:dr_app/Feature/feature_Nobat/data/NobatData.dart';
import 'package:dr_app/Feature/feature_Nobat/presentation/widgets/Appbar_Nobat.dart';
import 'package:dr_app/Feature/feature_Nobat/presentation/widgets/NobatList.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class NobatPage extends StatelessWidget {
  const NobatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar_NobatPage(context),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              nobatWidget(
                context: context,
                title: "Farvardin".tr,
                enum_year: year.Farvardin
              ),
              nobatWidget(
                context: context,
                title: "Ordibehesht".tr,
                enum_year: year.Ordibehesht
              ),
               nobatWidget(
                context: context,
                title: "Khordad".tr,
                enum_year: year.Khordad
              ),
              nobatWidget(
                context: context,
                title: "Tir".tr,
                enum_year: year.Tir
              ),
              nobatWidget(
                context: context,
                title: "Mordad".tr,
                enum_year: year.Mordad
              ),
              nobatWidget(
                context: context,
                title: "Shahrivar".tr,
                enum_year: year.Shahrivar
              ),
              nobatWidget(
                context: context,
                title:"Mehr".tr,
                enum_year: year.Mehr
              ),
              
              nobatWidget(
                context: context,
                title:"Aban".tr,
                enum_year: year.Aban
              ),
              nobatWidget(
                context: context,
                title:   "Azar".tr,
                enum_year: year.Azar
              ),
               nobatWidget(
                context: context,
                title: "Dey".tr,
                enum_year: year.Dey
              ),
               nobatWidget(
                context: context,
                title: "Bahman".tr,
                enum_year: year.Bahman
              ),
               nobatWidget(
                context: context,
                title: "Esfand".tr,
                enum_year: year.Esfand
              ),
            ],
          ),
        ));
  }

}
