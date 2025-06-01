// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KGradients {
  static LinearGradient BUNDLE_BASIC_GRADIENT = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      KColors.BUNDLE_BASIC_START,
      KColors.BUNDLE_BASIC_END,
    ],
  );
  static LinearGradient BUNDLE_MEDIUM_GRADIENT = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      KColors.BUNDLE_MEDIUM_START,
      KColors.BUNDLE_MEDIUM_END,
    ],
  );
  static LinearGradient BUNDLE_TOP_GRADIENT = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      KColors.BUNDLE_TOP_START,
      KColors.BUNDLE_TOP_END,
    ],
  );
}
