import 'package:get/get.dart';
import 'package:sgm_admin/core/initials/controller/theme_controller.dart';
import 'package:sgm_admin/core/services/local_storage.dart';

class InitialBindings {
  Future<void> initBindings() async {
    // STORAGE
    await Get.putAsync(
      () async {
        return await LocalStorage().init();
      },
    );
    // THEME CONTROLLER
    Get.lazyPut<ThemeController>(
        () => ThemeController(localStorage: Get.find<LocalStorage>()));
  }
}
