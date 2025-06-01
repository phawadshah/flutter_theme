import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KBadgeTheme extends ThemeExtension<KBadgeTheme> {
  final Color activeForegroundDefault;
  final Color activeBorderDefault;

  // LIGHT
  final Color lightBackgroundColor;
  final Color lightForegroundColor;
  final Color lightBorderColor;
  final Color lightActiveBackgroundColor;

  // NEUTRAL
  final Color neutralBackgroundColor;
  final Color neutralForegroundColor;
  final Color neutralBorderColor;

  // INFO
  final Color infoBackgroundColor;
  final Color infoForegroundColor;
  final Color infoBorderColor;
  final Color infoActiveBackgroundColor;

  // SUCCESS
  final Color successBackgroundColor;
  final Color successForegroundColor;
  final Color successBorderColor;
  final Color successActiveBackgroundColor;

  // WARNING
  final Color warningBackgroundColor;
  final Color warningForegroundColor;
  final Color warningBorderColor;
  final Color warningActiveBackgroundColor;

  // CRITICAL
  final Color criticalBackgroundColor;
  final Color criticalForegroundColor;
  final Color criticalBorderColor;
  final Color criticalActiveBackgroundColor;

  KBadgeTheme._internal({
    required this.activeForegroundDefault,
    required this.activeBorderDefault,

    // LIGHT
    required this.lightBackgroundColor,
    required this.lightForegroundColor,
    required this.lightBorderColor,
    required this.lightActiveBackgroundColor,

    // NEUTRAL
    required this.neutralBackgroundColor,
    required this.neutralForegroundColor,
    required this.neutralBorderColor,

    // INFO
    required this.infoBackgroundColor,
    required this.infoForegroundColor,
    required this.infoBorderColor,
    required this.infoActiveBackgroundColor,

    // SUCCESS
    required this.successBackgroundColor,
    required this.successForegroundColor,
    required this.successBorderColor,
    required this.successActiveBackgroundColor,

    // WARNING
    required this.warningBackgroundColor,
    required this.warningForegroundColor,
    required this.warningBorderColor,
    required this.warningActiveBackgroundColor,

    // CRITICAL
    required this.criticalBackgroundColor,
    required this.criticalForegroundColor,
    required this.criticalBorderColor,
    required this.criticalActiveBackgroundColor,
  });

  factory KBadgeTheme.light() {
    return KBadgeTheme._internal(
      activeForegroundDefault: KColors.WHITE,
      activeBorderDefault: Colors.transparent,
      // LIGHT
      lightBackgroundColor: KColors.WHITE,
      lightForegroundColor: KColors.INK_DARK,
      lightBorderColor: KColors.WHITE_ACTIVE,
      lightActiveBackgroundColor: KColors.INK_DARK,

      // NEUTRAL
      neutralBackgroundColor: KColors.CLOUD_LIGHT,
      neutralForegroundColor: KColors.INK_DARK,
      neutralBorderColor: KColors.CLOUD_LIGHT_HOVER,

      // INFO
      infoBackgroundColor: KColors.BLUE_LIGHT,
      infoForegroundColor: KColors.BLUE_DARK,
      infoBorderColor: KColors.BLUE_LIGHT_HOVER,
      infoActiveBackgroundColor: KColors.BLUE_NORMAL,

      // SUCCESS
      successBackgroundColor: KColors.GREEN_LIGHT,
      successForegroundColor: KColors.GREEN_DARK,
      successBorderColor: KColors.GREEN_LIGHT_HOVER,
      successActiveBackgroundColor: KColors.GREEN_NORMAL,

      // WARNING
      warningBackgroundColor: KColors.ORANGE_LIGHT,
      warningForegroundColor: KColors.ORANGE_DARK,
      warningBorderColor: KColors.ORANGE_LIGHT_HOVER,
      warningActiveBackgroundColor: KColors.ORANGE_NORMAL,

      // CRITICAL
      criticalBackgroundColor: KColors.RED_LIGHT,
      criticalForegroundColor: KColors.RED_DARK,
      criticalBorderColor: KColors.RED_LIGHT_HOVER,
      criticalActiveBackgroundColor: KColors.RED_NORMAL,
    );
  }
  factory KBadgeTheme.dark() {
    return KBadgeTheme._internal(
      activeForegroundDefault: KColors.WHITE_DARK,
      activeBorderDefault: Colors.transparent,
      // LIGHT
      lightBackgroundColor: KColors.WHITE_DARK,
      lightForegroundColor: KColors.INK_DARK_DARK,
      lightBorderColor: KColors.WHITE_ACTIVE_DARK,
      lightActiveBackgroundColor: KColors.INK_DARK_DARK,

      // NEUTRAL
      neutralBackgroundColor: KColors.CLOUD_LIGHT_DARK,
      neutralForegroundColor: KColors.INK_DARK_DARK,
      neutralBorderColor: KColors.CLOUD_LIGHT_HOVER_DARK,

      // INFO
      infoBackgroundColor: KColors.BLUE_LIGHT_DARK,
      infoForegroundColor: KColors.BLUE_DARK_DARK,
      infoBorderColor: KColors.BLUE_LIGHT_HOVER_DARK,
      infoActiveBackgroundColor: KColors.BLUE_NORMAL_DARK,

      // SUCCESS
      successBackgroundColor: KColors.GREEN_LIGHT_DARK,
      successForegroundColor: KColors.GREEN_DARK_DARK,
      successBorderColor: KColors.GREEN_LIGHT_HOVER_DARK,
      successActiveBackgroundColor: KColors.GREEN_NORMAL_DARK,

      // WARNING
      warningBackgroundColor: KColors.ORANGE_LIGHT_DARK,
      warningForegroundColor: KColors.ORANGE_DARK_DARK,
      warningBorderColor: KColors.ORANGE_LIGHT_HOVER_DARK,
      warningActiveBackgroundColor: KColors.ORANGE_NORMAL_DARK,

      // CRITICAL
      criticalBackgroundColor: KColors.RED_LIGHT_DARK,
      criticalForegroundColor: KColors.RED_DARK_DARK,
      criticalBorderColor: KColors.RED_LIGHT_HOVER_DARK,
      criticalActiveBackgroundColor: KColors.RED_NORMAL_DARK,
    );
  }
  @override
  ThemeExtension<KBadgeTheme> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode == true) {
      return KBadgeTheme.light();
    }
    return KBadgeTheme.dark();
  }

  @override
  ThemeExtension<KBadgeTheme> lerp(
      covariant ThemeExtension<KBadgeTheme>? other, double t) {
    return this;
  }
}
