import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconsController extends GetxController {
  ScrollController pageScrollController = ScrollController();

  RxBool showTitle = false.obs;

  @override
  void onInit() {
    _registerScrollListener();
    super.onInit();
  }

  void _registerScrollListener() {
    pageScrollController.addListener(() {
      if (pageScrollController.position.pixels > 50 && !showTitle.value) {
        showTitle.value = true;
      } else if (pageScrollController.position.pixels < 50 && showTitle.value) {
        showTitle.value = false;
      }
    });
  }

  void goBack() {
    Get.back();
  }
}
