import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KColorsTheme extends ThemeExtension<KColorsTheme> {
  // Buttons
  final Color backgroundDefault;
  final Color textDefault;
  final Color borderDefault;
  final Color iconDefault;

  // private constructor (use factories below instead):
  const KColorsTheme._internal({
    required this.backgroundDefault,
    required this.textDefault,
    required this.borderDefault,
    required this.iconDefault,
  });
  // factory for light mode:
  factory KColorsTheme.light() {
    return const KColorsTheme._internal(
      backgroundDefault: KColors.WHITE,
      textDefault: KColors.INK_DARK,
      borderDefault: KColors.CLOUD_NORMAL_HOVER,
      iconDefault: KColors.WHITE_DARK,
    );
  }

  // factory for dark mode:
  factory KColorsTheme.dark() {
    return const KColorsTheme._internal(
      backgroundDefault: KColors.WHITE_DARK,
      textDefault: KColors.INK_DARK_DARK,
      borderDefault: KColors.CLOUD_NORMAL_HOVER_DARK,
      iconDefault: KColors.WHITE,
    );
  }
  @override
  ThemeExtension<KColorsTheme> copyWith({bool? lightMode}) {
    {
      if (lightMode == null || lightMode == true) {
        return KColorsTheme.light();
      }
      return KColorsTheme.dark();
    }
  }

  @override
  ThemeExtension<KColorsTheme> lerp(
      covariant ThemeExtension<KColorsTheme>? other, double t) {
    return this;
  }
}
