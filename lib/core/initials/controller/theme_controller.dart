import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/core/services/local_storage.dart';

class ThemeController extends GetxController {
  final LocalStorage _localStorage;
  ThemeController({required LocalStorage localStorage})
      : _localStorage = localStorage;
  static ThemeController get to => Get.find();

  final RxBool _isDarkMode = false.obs;
  bool get isDarkMode => _isDarkMode.value;
  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  @override
  void onInit() {
    _loadTheme();
    super.onInit();
  }

  void toggleTheme() async {
    _isDarkMode.value = !_isDarkMode.value;
    await _localStorage.setBool(
        key: StorageConstants.isDarkMode, value: _isDarkMode.value);

    Get.changeThemeMode(themeMode);
  }

  Future<void> _loadTheme() async {
    _isDarkMode.value = _localStorage.getBool(key: StorageConstants.isDarkMode);
  }
}
