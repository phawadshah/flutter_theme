import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KTileTheme extends ThemeExtension<KTileTheme> {
  final Color backgroundDefault;
  final Color splash;

  KTileTheme._internal({
    required this.backgroundDefault,
    required this.splash,
  });

  factory KTileTheme.light() {
    return KTileTheme._internal(
      backgroundDefault: KColors.WHITE,
      splash: KColors.WHITE_HOVER,
    );
  }
  factory KTileTheme.dark() {
    return KTileTheme._internal(
      backgroundDefault: KColors.CLOUD_LIGHT_HOVER_DARK,
      splash: KColors.WHITE_HOVER_DARK,
    );
  }
  @override
  ThemeExtension<KTileTheme> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode == true) {
      return KTileTheme.light();
    }
    return KTileTheme.dark();
  }

  @override
  ThemeExtension<KTileTheme> lerp(
      covariant ThemeExtension<KTileTheme>? other, double t) {
    return this;
  }
}
