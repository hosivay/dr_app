import 'package:get/get.dart';

class DropMenuController extends GetxController {
  var chosenValue = "دکتر".obs;

  selectItem(String value) {
    chosenValue(value) ;

    update();
  }
}
