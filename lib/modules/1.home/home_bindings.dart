import 'package:get/get.dart';
import 'package:sgm_admin/modules/1.home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
