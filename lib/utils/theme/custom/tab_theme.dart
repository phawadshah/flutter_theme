import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KTabTheme extends ThemeExtension<KTabTheme> {
  final Color backgroundActive;
  final Color background;
  final Color border;
  final Color textColor;
  KTabTheme._internal({
    required this.backgroundActive,
    required this.background,
    required this.border,
    required this.textColor,
  });

  factory KTabTheme.light() {
    return KTabTheme._internal(
      backgroundActive: KColors.WHITE,
      background: KColors.CLOUD_NORMAL,
      border: KColors.CLOUD_NORMAL_HOVER,
      textColor: KColors.INK_DARK,
    );
  }
  factory KTabTheme.dark() {
    return KTabTheme._internal(
      backgroundActive: KColors.WHITE_DARK,
      background: KColors.CLOUD_NORMAL_DARK,
      border: KColors.CLOUD_NORMAL_HOVER_DARK,
      textColor: KColors.INK_DARK_DARK,
    );
  }
  @override
  ThemeExtension<KTabTheme> copyWith({bool? lightMode}) {
    {
      if (lightMode == null || lightMode) {
        return KTabTheme.light();
      } else {
        return KTabTheme.dark();
      }
    }
  }

  @override
  ThemeExtension<KTabTheme> lerp(
      covariant ThemeExtension<KTabTheme>? other, double t) {
    return this;
  }
}
