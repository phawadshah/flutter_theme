import 'dart:developer';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends GetxService {
  late SharedPreferences _storage;

  Future<LocalStorage> init() async {
    try {
      _storage = await SharedPreferences.getInstance();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return this;
  }

  Future<void> setBool({required String key, required bool value}) async {
    try {
      await _storage.setBool(key, value);
    } catch (e) {
      rethrow;
    }
  }

  bool getBool({required String key}) {
    try {
      return _storage.getBool(key) ?? false;
    } catch (e) {
      rethrow;
    }
  }
}

class StorageConstants {
  static const String isDarkMode = 'isDarkMode';
}
