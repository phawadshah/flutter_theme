import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/theme/custom/alert_theme.dart';
import 'package:sgm_admin/utils/theme/custom/badge_theme.dart';
import 'package:sgm_admin/utils/theme/custom/button_theme.dart';
import 'package:sgm_admin/utils/theme/custom/color_theme.dart';
import 'package:sgm_admin/utils/theme/custom/status_button_theme.dart';
import 'package:sgm_admin/utils/theme/custom/tab_theme.dart';
import 'package:sgm_admin/utils/theme/custom/text_theme.dart';
import 'package:sgm_admin/utils/theme/custom/tile_theme.dart';

extension ThemeDataExtended on BuildContext {
  KColorsTheme get kColors => Theme.of(this).extension<KColorsTheme>()!;
  KTextTheme get kTexts => Theme.of(this).extension<KTextTheme>()!;
  KButtonTheme get kButtons => Theme.of(this).extension<KButtonTheme>()!;
  KTabTheme get kTabs => Theme.of(this).extension<KTabTheme>()!;
  KTileTheme get kTile => Theme.of(this).extension<KTileTheme>()!;
  KAlertTheme get kAlert => Theme.of(this).extension<KAlertTheme>()!;
  KBadgeTheme get kBadge => Theme.of(this).extension<KBadgeTheme>()!;
  KStatusButtonTheme get kStatusButtonTheme =>
      Theme.of(this).extension<KStatusButtonTheme>()!;
}
