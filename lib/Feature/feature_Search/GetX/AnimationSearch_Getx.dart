import 'package:get/get.dart';

class AnimationSearchController extends GetxController {
  var repeat = false.obs;

  repeatON() {
    repeat(true);
    Future.delayed(const Duration(seconds: 2), () {
      repeat(false);
    });
    update();
  }
}
