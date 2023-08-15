import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController mySnackBar(
    {required String title,
     String message = "",
    int? duration = 3,
    bool? attention = false}) {
  return Get.snackbar(title, message,
      duration: Duration(seconds: duration!),
      icon: attention!
          ? const Icon(
              CupertinoIcons.exclamationmark_triangle_fill,
              color: Colors.red,
            )
          : null);
}
