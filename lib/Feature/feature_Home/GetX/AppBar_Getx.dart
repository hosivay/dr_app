import 'package:get/get.dart';

class AppbarController extends GetxController {
  var isShowName = false.obs;
  int delay = 5;
  isNameShow() {
    if (isShowName.value== false) {
      isShowName(true);
    }else{
      isShowName(false);
    }

    update();
  }
}
