import 'package:get/get.dart';

class DropMenuSearchController extends GetxController {
  var chosenValue = "doctor".tr.obs;

  selectItem(String value) {
    chosenValue(value);

    update();
  }
}
