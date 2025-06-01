import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KAlertTheme extends ThemeExtension<KAlertTheme> {
  final Color backgroundDefault;
  final Color backgroundDefaultSecondary;
  final Color activeDefaultSecondary;
  final Color textOnDefaultSecondary;
  final Color borderDefault;
  // INFORMATIONAL ALERT
  final Color backgroundInfo;
  final Color backgroundInfoPrimary;
  final Color activeInfoPrimary;
  final Color textOnInfoPrimary;
  final Color backgroundInfoSecondary;
  final Color activeInfoSecondary;
  final Color textOnInfoSecondary;
  final Color infoBorder;

  // SUCCESS ALERT
  final Color backgroundSuccess;
  final Color backgroundSuccessPrimary;
  final Color activeSuccessPrimary;
  final Color textOnSuccessPrimary;
  final Color backgroundSuccessSecondary;
  final Color activeSuccessSecondary;
  final Color textOnSuccessSecondary;
  final Color successBorder;

  // WARNING ALERT
  final Color backgroundWarning;
  final Color backgroundWarningPrimary;
  final Color activeWarningPrimary;
  final Color textOnWarningPrimary;
  final Color backgroundWarningSecondary;
  final Color activeWarningSecondary;
  final Color textOnWarningSecondary;
  final Color warningBorder;

  // CRITICAL ALERT
  final Color backgroundCritical;
  final Color backgroundCriticalPrimary;
  final Color activeCriticalPrimary;
  final Color textOnCriticalPrimary;
  final Color backgroundCriticalSecondary;
  final Color activeCriticalSecondary;
  final Color textOnCriticalSecondary;
  final Color criticalBorder;

  KAlertTheme._({
    required this.backgroundDefault,
    required this.backgroundDefaultSecondary,
    required this.activeDefaultSecondary,
    required this.textOnDefaultSecondary,
    required this.borderDefault,

    // INFORMATIONAL ALERT
    required this.backgroundInfo,
    required this.backgroundInfoPrimary,
    required this.activeInfoPrimary,
    required this.textOnInfoPrimary,
    required this.backgroundInfoSecondary,
    required this.activeInfoSecondary,
    required this.textOnInfoSecondary,
    required this.infoBorder,

    // INFORMATIONAL ALERT
    required this.backgroundSuccess,
    required this.backgroundSuccessPrimary,
    required this.activeSuccessPrimary,
    required this.textOnSuccessPrimary,
    required this.backgroundSuccessSecondary,
    required this.activeSuccessSecondary,
    required this.textOnSuccessSecondary,
    required this.successBorder,

    // WARNING ALERT
    required this.backgroundWarning,
    required this.backgroundWarningPrimary,
    required this.activeWarningPrimary,
    required this.textOnWarningPrimary,
    required this.backgroundWarningSecondary,
    required this.activeWarningSecondary,
    required this.textOnWarningSecondary,
    required this.warningBorder,

    // CRITICAL ALERT
    required this.backgroundCritical,
    required this.backgroundCriticalPrimary,
    required this.activeCriticalPrimary,
    required this.textOnCriticalPrimary,
    required this.backgroundCriticalSecondary,
    required this.activeCriticalSecondary,
    required this.textOnCriticalSecondary,
    required this.criticalBorder,
  });

  factory KAlertTheme.light() {
    return KAlertTheme._(
      backgroundDefault: KColors.CLOUD_LIGHT,
      backgroundDefaultSecondary: KColors.CLOUD_NORMAL,
      activeDefaultSecondary: KColors.CLOUD_NORMAL_ACTIVE,
      textOnDefaultSecondary: KColors.INK_DARK,
      borderDefault: KColors.INK_LIGHT.withOpacity(.1),
      // INFORMATIONAL ALERT
      backgroundInfo: KColors.BLUE_LIGHT,
      backgroundInfoPrimary: KColors.BLUE_NORMAL,
      activeInfoPrimary: KColors.BLUE_NORMAL_ACTIVE,
      textOnInfoPrimary: KColors.WHITE,
      backgroundInfoSecondary: KColors.BLUE_LIGHT_HOVER,
      activeInfoSecondary: KColors.BLUE_LIGHT_ACTIVE,
      textOnInfoSecondary: KColors.BLUE_DARK_HOVER,
      infoBorder: KColors.BLUE_NORMAL.withOpacity(.1),

      // SUCCESS ALERT
      backgroundSuccess: KColors.GREEN_LIGHT,
      backgroundSuccessPrimary: KColors.GREEN_NORMAL,
      activeSuccessPrimary: KColors.GREEN_NORMAL_ACTIVE,
      textOnSuccessPrimary: KColors.WHITE,
      backgroundSuccessSecondary: KColors.GREEN_LIGHT_HOVER,
      activeSuccessSecondary: KColors.GREEN_LIGHT_ACTIVE,
      textOnSuccessSecondary: KColors.GREEN_DARK_HOVER,
      successBorder: KColors.GREEN_NORMAL.withOpacity(.1),

      // WARNING ALERT
      backgroundWarning: KColors.ORANGE_LIGHT,
      backgroundWarningPrimary: KColors.ORANGE_NORMAL,
      activeWarningPrimary: KColors.ORANGE_NORMAL_ACTIVE,
      textOnWarningPrimary: KColors.WHITE,
      backgroundWarningSecondary: KColors.ORANGE_LIGHT_HOVER,
      activeWarningSecondary: KColors.ORANGE_LIGHT_ACTIVE,
      textOnWarningSecondary: KColors.ORANGE_DARK_HOVER,
      warningBorder: KColors.ORANGE_NORMAL.withOpacity(.1),

      // CRITICAL ALERT
      backgroundCritical: KColors.RED_LIGHT,
      backgroundCriticalPrimary: KColors.RED_NORMAL,
      activeCriticalPrimary: KColors.RED_NORMAL_ACTIVE,
      textOnCriticalPrimary: KColors.WHITE,
      backgroundCriticalSecondary: KColors.RED_LIGHT_HOVER,
      activeCriticalSecondary: KColors.RED_LIGHT_ACTIVE,
      textOnCriticalSecondary: KColors.RED_DARK_HOVER,
      criticalBorder: KColors.RED_NORMAL.withOpacity(.1),
    );
  }
  factory KAlertTheme.dark() {
    return KAlertTheme._(
      backgroundDefault: KColors.CLOUD_LIGHT_DARK,
      backgroundDefaultSecondary: KColors.CLOUD_NORMAL_DARK,
      activeDefaultSecondary: KColors.CLOUD_NORMAL_ACTIVE_DARK,
      textOnDefaultSecondary: KColors.INK_DARK_DARK,
      borderDefault: KColors.INK_LIGHT_DARK.withOpacity(.1),

      // INFORMATIONAL ALERT
      backgroundInfo: KColors.BLUE_LIGHT_DARK,
      backgroundInfoPrimary: KColors.BLUE_NORMAL_DARK,
      activeInfoPrimary: KColors.BLUE_NORMAL_ACTIVE_DARK,
      textOnInfoPrimary: KColors.WHITE_DARK,
      backgroundInfoSecondary: KColors.BLUE_LIGHT_HOVER_DARK,
      activeInfoSecondary: KColors.BLUE_LIGHT_ACTIVE_DARK,
      textOnInfoSecondary: KColors.BLUE_DARK_HOVER_DARK,
      infoBorder: KColors.BLUE_NORMAL_DARK.withOpacity(.1),

      // SUCCESS ALERT
      backgroundSuccess: KColors.GREEN_LIGHT_DARK,
      backgroundSuccessPrimary: KColors.GREEN_NORMAL_DARK,
      activeSuccessPrimary: KColors.GREEN_NORMAL_ACTIVE_DARK,
      textOnSuccessPrimary: KColors.WHITE_DARK,
      backgroundSuccessSecondary: KColors.GREEN_LIGHT_HOVER_DARK,
      activeSuccessSecondary: KColors.GREEN_LIGHT_ACTIVE_DARK,
      textOnSuccessSecondary: KColors.GREEN_DARK_HOVER_DARK,
      successBorder: KColors.GREEN_NORMAL_DARK.withOpacity(.1),

      // WARNING ALERT
      backgroundWarning: KColors.ORANGE_LIGHT_DARK,
      backgroundWarningPrimary: KColors.ORANGE_NORMAL_DARK,
      activeWarningPrimary: KColors.ORANGE_NORMAL_ACTIVE_DARK,
      textOnWarningPrimary: KColors.WHITE_DARK,
      backgroundWarningSecondary: KColors.ORANGE_LIGHT_HOVER_DARK,
      activeWarningSecondary: KColors.ORANGE_LIGHT_ACTIVE_DARK,
      textOnWarningSecondary: KColors.ORANGE_DARK_HOVER_DARK,
      warningBorder: KColors.ORANGE_NORMAL_DARK.withOpacity(.1),

      // CRITICAL ALERT
      backgroundCritical: KColors.RED_LIGHT_DARK,
      backgroundCriticalPrimary: KColors.RED_NORMAL_DARK,
      activeCriticalPrimary: KColors.RED_NORMAL_ACTIVE_DARK,
      textOnCriticalPrimary: KColors.WHITE_DARK,
      backgroundCriticalSecondary: KColors.RED_LIGHT_HOVER_DARK,
      activeCriticalSecondary: KColors.RED_LIGHT_ACTIVE_DARK,
      textOnCriticalSecondary: KColors.RED_DARK_HOVER_DARK,
      criticalBorder: KColors.RED_NORMAL_DARK.withOpacity(.1),
    );
  }
  @override
  ThemeExtension<KAlertTheme> copyWith({bool? lightMode}) {
    {
      if (lightMode == null || lightMode == true) {
        return KAlertTheme.light();
      }
      return KAlertTheme.dark();
    }
  }

  @override
  ThemeExtension<KAlertTheme> lerp(
    covariant ThemeExtension<KAlertTheme>? other,
    double t,
  ) {
    return this;
  }
}
