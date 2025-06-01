import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KButtonTheme extends ThemeExtension<KButtonTheme> {
  // PRIMARY
  final Color backgroundPrimary;
  final Color hoverPrimary;
  final Color activePrimary;
  final Color textOnPrimary;

  // PRIMARY SUBTLE
  final Color backgroundPrimarySubtle;
  final Color hoverPrimarySubtle;
  final Color activePrimarySubtle;
  final Color textOnPrimarySubtle;

  // SECONDARY
  final Color backgroundSecondary;
  final Color hoverSecondary;
  final Color activeSecondary;
  final Color textOnSecondary;

  // CRITICAL
  final Color backgroundCritical;
  final Color hoverCritical;
  final Color activeCritical;
  final Color textOnCritical;

  // CRITICAL SUBTLE
  final Color backgroundCriticalSubtle;
  final Color hoverCriticalSubtle;
  final Color activeCriticalSubtle;
  final Color textOnCriticalSubtle;

  KButtonTheme._({
    // PRIMARY
    required this.backgroundPrimary,
    required this.hoverPrimary,
    required this.activePrimary,
    required this.textOnPrimary,
    // PRIMARY SUBTLE
    required this.backgroundPrimarySubtle,
    required this.hoverPrimarySubtle,
    required this.activePrimarySubtle,
    required this.textOnPrimarySubtle,
    // SECONDARY
    required this.backgroundSecondary,
    required this.hoverSecondary,
    required this.activeSecondary,
    required this.textOnSecondary,
    // CRITICAL
    required this.backgroundCritical,
    required this.hoverCritical,
    required this.activeCritical,
    required this.textOnCritical,
    // CRITICAL SUBTLE
    required this.backgroundCriticalSubtle,
    required this.hoverCriticalSubtle,
    required this.activeCriticalSubtle,
    required this.textOnCriticalSubtle,
  });

  factory KButtonTheme.light() {
    return KButtonTheme._(
      // PRIMARY
      backgroundPrimary: KColors.PRODUCT_NORMAL,
      hoverPrimary: KColors.PRODUCT_NORMAL_HOVER,
      activePrimary: KColors.PRODUCT_NORMAL_ACTIVE,
      textOnPrimary: KColors.WHITE,

      // PRIMARY
      backgroundPrimarySubtle: KColors.PRODUCT_LIGHT,
      hoverPrimarySubtle: KColors.PRODUCT_LIGHT_HOVER,
      activePrimarySubtle: KColors.PRODUCT_LIGHT_ACTIVE,
      textOnPrimarySubtle: KColors.PRODUCT_DARK,

      // SECONDARY
      backgroundSecondary: KColors.CLOUD_NORMAL,
      hoverSecondary: KColors.CLOUD_NORMAL_HOVER,
      activeSecondary: KColors.CLOUD_NORMAL_ACTIVE,
      textOnSecondary: KColors.INK_DARK,

      // CRITICAL
      backgroundCritical: KColors.RED_NORMAL,
      hoverCritical: KColors.RED_NORMAL_HOVER,
      activeCritical: KColors.RED_NORMAL_ACTIVE,
      textOnCritical: KColors.WHITE,

      // CRITICAL SUBTLE
      backgroundCriticalSubtle: KColors.RED_LIGHT,
      hoverCriticalSubtle: KColors.RED_LIGHT_HOVER,
      activeCriticalSubtle: KColors.RED_LIGHT_ACTIVE,
      textOnCriticalSubtle: KColors.RED_DARK,
    );
  }
  factory KButtonTheme.dark() {
    return KButtonTheme._(
      // PRIMARY
      backgroundPrimary: KColors.PRODUCT_NORMAL_DARK,
      hoverPrimary: KColors.PRODUCT_NORMAL_HOVER_DARK,
      activePrimary: KColors.PRODUCT_NORMAL_ACTIVE_DARK,
      textOnPrimary: KColors.WHITE_DARK,

      // PRIMARY
      backgroundPrimarySubtle: KColors.PRODUCT_LIGHT_DARK,
      hoverPrimarySubtle: KColors.PRODUCT_LIGHT_HOVER_DARK,
      activePrimarySubtle: KColors.PRODUCT_LIGHT_ACTIVE_DARK,
      textOnPrimarySubtle: KColors.PRODUCT_DARK_DARK,

      // SECONDARY
      backgroundSecondary: KColors.CLOUD_NORMAL_DARK,
      hoverSecondary: KColors.CLOUD_NORMAL_HOVER_DARK,
      activeSecondary: KColors.CLOUD_NORMAL_ACTIVE_DARK,
      textOnSecondary: KColors.INK_DARK_DARK,

      // CRITICAL
      backgroundCritical: KColors.RED_NORMAL_DARK,
      hoverCritical: KColors.RED_NORMAL_HOVER_DARK,
      activeCritical: KColors.RED_NORMAL_ACTIVE_DARK,
      textOnCritical: KColors.WHITE_DARK,

      // CRITICAL SUBTLE
      backgroundCriticalSubtle: KColors.RED_LIGHT_DARK,
      hoverCriticalSubtle: KColors.RED_LIGHT_HOVER_DARK,
      activeCriticalSubtle: KColors.RED_LIGHT_ACTIVE_DARK,
      textOnCriticalSubtle: KColors.RED_DARK_DARK,
    );
  }
  @override
  ThemeExtension<KButtonTheme> copyWith({bool? lightMode}) {
    {
      if (lightMode == null || lightMode == true) {
        return KButtonTheme.light();
      }
      return KButtonTheme.dark();
    }
  }

  @override
  ThemeExtension<KButtonTheme> lerp(
    covariant ThemeExtension<KButtonTheme>? other,
    double t,
  ) {
    return this;
  }
}
