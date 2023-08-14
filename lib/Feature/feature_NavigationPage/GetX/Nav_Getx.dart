import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  int visit = 0;
  var appPageController = PageController();

   
  changePage(int index) {
    visit = index;
    appPageController.jumpToPage(index);
    update();
  }
}