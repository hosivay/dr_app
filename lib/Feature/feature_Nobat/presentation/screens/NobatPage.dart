import 'package:dr_app/Feature/feature_Nobat/data/NobatData.dart';
import 'package:dr_app/Feature/feature_Nobat/presentation/widgets/Appbar_Nobat.dart';
import 'package:dr_app/Feature/feature_Nobat/presentation/widgets/NobatList.dart'; 
import 'package:flutter/material.dart'; 

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
                title: yearFarsiList[0],
                enum_year: year.Farvardin
              ),
              nobatWidget(
                context: context,
                title: yearFarsiList[1],
                enum_year: year.Ordibehesht
              ),
               nobatWidget(
                context: context,
                title: yearFarsiList[2],
                enum_year: year.Khordad
              ),
              nobatWidget(
                context: context,
                title: yearFarsiList[3],
                enum_year: year.Tir
              ),
              nobatWidget(
                context: context,
                title: yearFarsiList[4],
                enum_year: year.Mordad
              ),
              nobatWidget(
                context: context,
                title: yearFarsiList[5],
                enum_year: year.Shahrivar
              ),
              nobatWidget(
                context: context,
                title: yearFarsiList[6],
                enum_year: year.Mehr
              ),
              
              nobatWidget(
                context: context,
                title: yearFarsiList[7],
                enum_year: year.Aban
              ),
              nobatWidget(
                context: context,
                title: yearFarsiList[8],
                enum_year: year.Azar
              ),
               nobatWidget(
                context: context,
                title: yearFarsiList[9],
                enum_year: year.Dey
              ),
               nobatWidget(
                context: context,
                title: yearFarsiList[10],
                enum_year: year.Bahman
              ),
               nobatWidget(
                context: context,
                title: yearFarsiList[11],
                enum_year: year.Esfand
              ),
            ],
          ),
        ));
  }

}
