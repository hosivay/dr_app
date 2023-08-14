import 'package:dr_app/Feature/feature_Nobat/data/NobatData.dart';
import 'package:dr_app/Feature/feature_Nobat/presentation/widgets/NobatListWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget nobatWidget(
    {required BuildContext context,
    required String title,
    required year enum_year}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Theme.of(context).primaryColor.withOpacity(0.06),
        child: Visibility(
          // ignore: unrelated_type_equality_checks
          visible: getDataYear(enum_year).isNotEmpty,
          replacement: NobatisEmptyWidget(context, title),
          child: NobatIsNotEmptyWidget(context, title, enum_year),
        ),
      ),
    ),
  );
}
