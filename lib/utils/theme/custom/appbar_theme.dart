import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KAppbarTheme {
  static const AppBarTheme light = AppBarTheme(
    elevation: 0,
    backgroundColor: KColors.WHITE,
    shadowColor: KColors.INK_DARK_ACTIVE,
    surfaceTintColor: KColors.INK_DARK_ACTIVE,
    scrolledUnderElevation: .5,
  );
  static const AppBarTheme dark = AppBarTheme(
    elevation: 0,
    backgroundColor: KColors.WHITE_DARK,
    shadowColor: KColors.INK_DARK_ACTIVE_DARK,
    surfaceTintColor: KColors.INK_DARK_ACTIVE_DARK,
    scrolledUnderElevation: .5,
  );
}
