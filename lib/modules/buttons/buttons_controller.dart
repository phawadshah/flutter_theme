import 'package:get/get.dart';

class ButtonsController extends GetxController {
  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void goBack() {
    Get.back();
  }
}
