import 'package:get/get.dart';
import 'package:sgm_admin/modules/colors/colors_controller.dart';

class ColorsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ColorsController());
  }
}
