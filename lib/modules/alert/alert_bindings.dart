import 'package:get/get.dart';
import 'package:sgm_admin/modules/alert/alert_controller.dart';

class AlertBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlertController());
  }
}
