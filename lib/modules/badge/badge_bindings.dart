import 'package:get/get.dart';
import 'package:sgm_admin/modules/alert/alert_controller.dart';
import 'package:sgm_admin/modules/badge/badge_controller.dart';

class BadgeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BadgeController());
  }
}
