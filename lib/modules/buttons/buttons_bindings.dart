import 'package:get/get.dart';

import 'package:sgm_admin/modules/buttons/buttons_controller.dart';

class ButtonsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ButtonsController());
  }
}
