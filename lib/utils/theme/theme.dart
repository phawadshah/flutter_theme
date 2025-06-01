import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/theme/custom/alert_theme.dart';
import 'package:sgm_admin/utils/theme/custom/appbar_theme.dart';
import 'package:sgm_admin/utils/theme/custom/badge_theme.dart';
import 'package:sgm_admin/utils/theme/custom/status_button_theme.dart';
import 'package:sgm_admin/utils/theme/custom/tile_theme.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/theme/custom/button_theme.dart';
import 'package:sgm_admin/utils/theme/custom/color_theme.dart';
import 'package:sgm_admin/utils/theme/custom/tab_theme.dart';
import 'package:sgm_admin/utils/theme/custom/text_theme.dart';

class KTheme {
  KTheme._();

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: KColors.WHITE,
    appBarTheme: KAppbarTheme.light,
    extensions: [
      KColorsTheme.light(),
      KTextTheme.light(),
      KButtonTheme.light(),
      KTabTheme.light(),
      KTileTheme.light(),
      KAlertTheme.light(),
      KBadgeTheme.light(),
      KStatusButtonTheme.light(),
    ],
  );
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: KColors.WHITE_DARK,
    appBarTheme: KAppbarTheme.dark,
    extensions: [
      KColorsTheme.dark(),
      KTextTheme.dark(),
      KButtonTheme.dark(),
      KTabTheme.dark(),
      KTileTheme.dark(),
      KAlertTheme.dark(),
      KBadgeTheme.dark(),
      KStatusButtonTheme.dark(),
    ],
  );
}
