import 'package:get/get.dart';
import 'package:sgm_admin/modules/typography/typography_controller.dart';

class TypographyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TypographyController());
  }
}
