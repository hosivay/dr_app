import 'package:get/get.dart';

class DropMenuController extends GetxController {
  var chosenValue = "doctor".tr.obs;

  selectItem(String value) {
    chosenValue(value);

    update();
  }
}
