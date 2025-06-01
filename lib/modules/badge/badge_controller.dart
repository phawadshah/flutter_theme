import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/alert.dart';

class BadgeController extends GetxController {
  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void goBack() {
    Get.back();
  }
}
