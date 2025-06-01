import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KStatusButtonTheme extends ThemeExtension<KStatusButtonTheme> {
  final Color activeForegroundDefault;

  // INFO
  final Color infoBackgroundColor;
  final Color infoForegroundColor;
  final Color infoSplashColor;
  final Color infoActiveBackgroundColor;
  final Color infoActiveSplashColor;

  // SUCCESS
  final Color successBackgroundColor;
  final Color successForegroundColor;
  final Color successSplashColor;
  final Color successActiveBackgroundColor;
  final Color successActiveSplashColor;

  // WARNING
  final Color warningBackgroundColor;
  final Color warningForegroundColor;
  final Color warningSplashColor;
  final Color warningActiveBackgroundColor;
  final Color warningActiveSplashColor;

  // CRITICAL
  final Color criticalBackgroundColor;
  final Color criticalForegroundColor;
  final Color criticalSplashColor;
  final Color criticalActiveBackgroundColor;
  final Color criticalActiveSplashColor;

  KStatusButtonTheme._internal({
    required this.activeForegroundDefault,

    // INFO
    required this.infoBackgroundColor,
    required this.infoForegroundColor,
    required this.infoSplashColor,
    required this.infoActiveBackgroundColor,
    required this.infoActiveSplashColor,

    // SUCCESS
    required this.successBackgroundColor,
    required this.successForegroundColor,
    required this.successSplashColor,
    required this.successActiveBackgroundColor,
    required this.successActiveSplashColor,

    // WARNING
    required this.warningBackgroundColor,
    required this.warningForegroundColor,
    required this.warningSplashColor,
    required this.warningActiveBackgroundColor,
    required this.warningActiveSplashColor,

    // CRITICAL
    required this.criticalBackgroundColor,
    required this.criticalForegroundColor,
    required this.criticalSplashColor,
    required this.criticalActiveBackgroundColor,
    required this.criticalActiveSplashColor,
  });

  factory KStatusButtonTheme.light() {
    return KStatusButtonTheme._internal(
      activeForegroundDefault: KColors.WHITE,

      // INFO
      infoBackgroundColor: KColors.BLUE_LIGHT,
      infoForegroundColor: KColors.BLUE_DARK,
      infoSplashColor: KColors.BLUE_LIGHT_ACTIVE,
      infoActiveBackgroundColor: KColors.BLUE_NORMAL,
      infoActiveSplashColor: KColors.BLUE_NORMAL_ACTIVE,

      // SUCCESS
      successBackgroundColor: KColors.GREEN_LIGHT,
      successForegroundColor: KColors.GREEN_DARK,
      successSplashColor: KColors.GREEN_LIGHT_ACTIVE,
      successActiveBackgroundColor: KColors.GREEN_NORMAL,
      successActiveSplashColor: KColors.GREEN_NORMAL_ACTIVE,

      // WARNING
      warningBackgroundColor: KColors.ORANGE_LIGHT,
      warningForegroundColor: KColors.ORANGE_DARK,
      warningSplashColor: KColors.ORANGE_LIGHT_ACTIVE,
      warningActiveBackgroundColor: KColors.ORANGE_NORMAL,
      warningActiveSplashColor: KColors.ORANGE_NORMAL_ACTIVE,

      // CRITICAL
      criticalBackgroundColor: KColors.RED_LIGHT,
      criticalForegroundColor: KColors.RED_DARK,
      criticalSplashColor: KColors.RED_LIGHT_ACTIVE,
      criticalActiveBackgroundColor: KColors.RED_NORMAL,
      criticalActiveSplashColor: KColors.RED_NORMAL_ACTIVE,
    );
  }
  factory KStatusButtonTheme.dark() {
    return KStatusButtonTheme._internal(
      activeForegroundDefault: KColors.WHITE_DARK,

      // INFO
      infoBackgroundColor: KColors.BLUE_LIGHT_DARK,
      infoForegroundColor: KColors.BLUE_DARK_DARK,
      infoSplashColor: KColors.BLUE_LIGHT_ACTIVE_DARK,
      infoActiveBackgroundColor: KColors.BLUE_NORMAL_DARK,
      infoActiveSplashColor: KColors.BLUE_NORMAL_ACTIVE_DARK,

      // SUCCESS
      successBackgroundColor: KColors.GREEN_LIGHT_DARK,
      successForegroundColor: KColors.GREEN_DARK_DARK,
      successSplashColor: KColors.GREEN_LIGHT_ACTIVE_DARK,
      successActiveBackgroundColor: KColors.GREEN_NORMAL_DARK,
      successActiveSplashColor: KColors.GREEN_NORMAL_ACTIVE_DARK,

      // WARNING
      warningBackgroundColor: KColors.ORANGE_LIGHT_DARK,
      warningForegroundColor: KColors.ORANGE_DARK_DARK,
      warningSplashColor: KColors.ORANGE_LIGHT_ACTIVE_DARK,
      warningActiveBackgroundColor: KColors.ORANGE_NORMAL_DARK,
      warningActiveSplashColor: KColors.ORANGE_NORMAL_ACTIVE_DARK,

      // CRITICAL
      criticalBackgroundColor: KColors.RED_LIGHT_DARK,
      criticalForegroundColor: KColors.RED_DARK_DARK,
      criticalSplashColor: KColors.RED_LIGHT_ACTIVE_DARK,
      criticalActiveBackgroundColor: KColors.RED_NORMAL_DARK,
      criticalActiveSplashColor: KColors.RED_NORMAL_ACTIVE_DARK,
    );
  }
  @override
  ThemeExtension<KStatusButtonTheme> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode == true) {
      return KStatusButtonTheme.light();
    }
    return KStatusButtonTheme.dark();
  }

  @override
  ThemeExtension<KStatusButtonTheme> lerp(
      covariant ThemeExtension<KStatusButtonTheme>? other, double t) {
    return this;
  }
}
