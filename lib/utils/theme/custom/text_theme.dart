// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/common/styles/text_styles.dart';

class KTextTheme extends ThemeExtension<KTextTheme> {
  // ======================== HEADING ==========================
  final TextStyle HEADING_TITLE_1;
  final TextStyle HEADING_TITLE_2;
  final TextStyle HEADING_TITLE_3;
  final TextStyle HEADING_TITLE_4;
  final TextStyle HEADING_TITLE_5;
  final TextStyle HEADING_TITLE_6;

  // ======================== TEXTS ==========================
  // EXTRA LARGE
  final TextStyle TEXT_EXTRALARGE_REGULAR;
  final TextStyle TEXT_EXTRALARGE_MEDIUM;
  final TextStyle TEXT_EXTRALARGE_BOLD;
  final TextStyle TEXT_EXTRALARGE_UNDERLINED;

  // LARGE
  final TextStyle TEXT_LARGE_REGULAR;
  final TextStyle TEXT_LARGE_MEDIUM;
  final TextStyle TEXT_LARGE_BOLD;
  final TextStyle TEXT_LARGE_UNDERLINED;

  // NORMAL
  final TextStyle TEXT_NORMAL_REGULAR;
  final TextStyle TEXT_NORMAL_MEDIUM;
  final TextStyle TEXT_NORMAL_BOLD;
  final TextStyle TEXT_NORMAL_UNDERLINED;

  // SMALL
  final TextStyle TEXT_SMALL_REGULAR;
  final TextStyle TEXT_SMALL_MEDIUM;
  final TextStyle TEXT_SMALL_BOLD;
  final TextStyle TEXT_SMALL_UNDERLINED;

  KTextTheme._intermal({
    required this.HEADING_TITLE_1,
    required this.HEADING_TITLE_2,
    required this.HEADING_TITLE_3,
    required this.HEADING_TITLE_4,
    required this.HEADING_TITLE_5,
    required this.HEADING_TITLE_6,
    required this.TEXT_EXTRALARGE_REGULAR,
    required this.TEXT_EXTRALARGE_MEDIUM,
    required this.TEXT_EXTRALARGE_BOLD,
    required this.TEXT_EXTRALARGE_UNDERLINED,
    required this.TEXT_LARGE_REGULAR,
    required this.TEXT_LARGE_MEDIUM,
    required this.TEXT_LARGE_BOLD,
    required this.TEXT_LARGE_UNDERLINED,
    required this.TEXT_NORMAL_REGULAR,
    required this.TEXT_NORMAL_MEDIUM,
    required this.TEXT_NORMAL_BOLD,
    required this.TEXT_NORMAL_UNDERLINED,
    required this.TEXT_SMALL_REGULAR,
    required this.TEXT_SMALL_MEDIUM,
    required this.TEXT_SMALL_BOLD,
    required this.TEXT_SMALL_UNDERLINED,
  });

  factory KTextTheme.light() {
    return KTextTheme._intermal(
      HEADING_TITLE_1: KTextStyles.HEADING_TITLE_1,
      HEADING_TITLE_2: KTextStyles.HEADING_TITLE_2,
      HEADING_TITLE_3: KTextStyles.HEADING_TITLE_3,
      HEADING_TITLE_4: KTextStyles.HEADING_TITLE_4,
      HEADING_TITLE_5: KTextStyles.HEADING_TITLE_5,
      HEADING_TITLE_6: KTextStyles.HEADING_TITLE_6,
      TEXT_EXTRALARGE_REGULAR: KTextStyles.TEXT_EXTRALARGE_REGULAR,
      TEXT_EXTRALARGE_MEDIUM: KTextStyles.TEXT_EXTRALARGE_MEDIUM,
      TEXT_EXTRALARGE_BOLD: KTextStyles.TEXT_EXTRALARGE_BOLD,
      TEXT_EXTRALARGE_UNDERLINED: KTextStyles.TEXT_EXTRALARGE_UNDERLINED,
      TEXT_LARGE_REGULAR: KTextStyles.TEXT_LARGE_REGULAR,
      TEXT_LARGE_MEDIUM: KTextStyles.TEXT_LARGE_MEDIUM,
      TEXT_LARGE_BOLD: KTextStyles.TEXT_LARGE_BOLD,
      TEXT_LARGE_UNDERLINED: KTextStyles.TEXT_LARGE_UNDERLINED,
      TEXT_NORMAL_REGULAR: KTextStyles.TEXT_NORMAL_REGULAR,
      TEXT_NORMAL_MEDIUM: KTextStyles.TEXT_NORMAL_MEDIUM,
      TEXT_NORMAL_BOLD: KTextStyles.TEXT_NORMAL_BOLD,
      TEXT_NORMAL_UNDERLINED: KTextStyles.TEXT_NORMAL_UNDERLINED,
      TEXT_SMALL_REGULAR: KTextStyles.TEXT_SMALL_REGULAR,
      TEXT_SMALL_MEDIUM: KTextStyles.TEXT_SMALL_MEDIUM,
      TEXT_SMALL_BOLD: KTextStyles.TEXT_SMALL_BOLD,
      TEXT_SMALL_UNDERLINED: KTextStyles.TEXT_SMALL_UNDERLINED,
    );
  }
  factory KTextTheme.dark() {
    return KTextTheme._intermal(
      HEADING_TITLE_1:
          KTextStyles.HEADING_TITLE_1.copyWith(color: KColors.WHITE),
      HEADING_TITLE_2:
          KTextStyles.HEADING_TITLE_2.copyWith(color: KColors.WHITE),
      HEADING_TITLE_3:
          KTextStyles.HEADING_TITLE_3.copyWith(color: KColors.WHITE),
      HEADING_TITLE_4:
          KTextStyles.HEADING_TITLE_4.copyWith(color: KColors.WHITE),
      HEADING_TITLE_5:
          KTextStyles.HEADING_TITLE_5.copyWith(color: KColors.WHITE),
      HEADING_TITLE_6:
          KTextStyles.HEADING_TITLE_6.copyWith(color: KColors.WHITE),
      TEXT_EXTRALARGE_REGULAR:
          KTextStyles.TEXT_EXTRALARGE_REGULAR.copyWith(color: KColors.WHITE),
      TEXT_EXTRALARGE_MEDIUM:
          KTextStyles.TEXT_EXTRALARGE_MEDIUM.copyWith(color: KColors.WHITE),
      TEXT_EXTRALARGE_BOLD:
          KTextStyles.TEXT_EXTRALARGE_BOLD.copyWith(color: KColors.WHITE),
      TEXT_EXTRALARGE_UNDERLINED: KTextStyles.TEXT_EXTRALARGE_UNDERLINED
          .copyWith(color: KColors.WHITE, decorationColor: KColors.WHITE),
      TEXT_LARGE_REGULAR:
          KTextStyles.TEXT_LARGE_REGULAR.copyWith(color: KColors.WHITE),
      TEXT_LARGE_MEDIUM:
          KTextStyles.TEXT_LARGE_MEDIUM.copyWith(color: KColors.WHITE),
      TEXT_LARGE_BOLD:
          KTextStyles.TEXT_LARGE_BOLD.copyWith(color: KColors.WHITE),
      TEXT_LARGE_UNDERLINED: KTextStyles.TEXT_LARGE_UNDERLINED
          .copyWith(color: KColors.WHITE, decorationColor: KColors.WHITE),
      TEXT_NORMAL_REGULAR:
          KTextStyles.TEXT_NORMAL_REGULAR.copyWith(color: KColors.WHITE),
      TEXT_NORMAL_MEDIUM:
          KTextStyles.TEXT_NORMAL_MEDIUM.copyWith(color: KColors.WHITE),
      TEXT_NORMAL_BOLD:
          KTextStyles.TEXT_NORMAL_BOLD.copyWith(color: KColors.WHITE),
      TEXT_NORMAL_UNDERLINED: KTextStyles.TEXT_NORMAL_UNDERLINED
          .copyWith(color: KColors.WHITE, decorationColor: KColors.WHITE),
      TEXT_SMALL_REGULAR:
          KTextStyles.TEXT_SMALL_REGULAR.copyWith(color: KColors.WHITE),
      TEXT_SMALL_MEDIUM:
          KTextStyles.TEXT_SMALL_MEDIUM.copyWith(color: KColors.WHITE),
      TEXT_SMALL_BOLD:
          KTextStyles.TEXT_SMALL_BOLD.copyWith(color: KColors.WHITE),
      TEXT_SMALL_UNDERLINED: KTextStyles.TEXT_SMALL_UNDERLINED
          .copyWith(color: KColors.WHITE, decorationColor: KColors.WHITE),
    );
  }

  @override
  ThemeExtension<KTextTheme> copyWith({bool? lightMode}) {
    {
      if (lightMode == null || lightMode == true) {
        return KTextTheme.light();
      }
      return KTextTheme.dark();
    }
  }

  @override
  ThemeExtension<KTextTheme> lerp(
      covariant ThemeExtension<KTextTheme>? other, double t) {
    return this;
  }
}
