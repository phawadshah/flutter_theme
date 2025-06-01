import 'package:get/get.dart';
import 'package:sgm_admin/modules/icons/icons_controller.dart';

class IconsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IconsController>(() => IconsController());
  }
}
