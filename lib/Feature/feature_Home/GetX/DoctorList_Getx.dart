import 'package:get/get.dart';

class DoctorListController extends GetxController {
  RxString? getLocale;

  @override
  void onInit() {
    super.onInit();
    getLocale = "fa".obs;
  }

  checkLocale() {
    if (Get.locale?.languageCode == "fa") {
      getLocale!.value = "fa";
    } else {
      getLocale!.value = "en";
    }
    update();
  }
}
