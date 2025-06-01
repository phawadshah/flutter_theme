// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';

class KText extends StatelessWidget {
  final String text;
  final KTextStyle style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;
  const KText(
    this.text, {
    super.key,
    required this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
  });

  TextStyle _getTextStyle(BuildContext context, KTextStyle style) {
    final baseStyle = switch (style) {
      KTextStyle.HEADING_TITLE_1 =>
        context.kTexts.HEADING_TITLE_1.copyWith(color: color),
      KTextStyle.HEADING_TITLE_2 =>
        context.kTexts.HEADING_TITLE_2.copyWith(color: color),
      KTextStyle.HEADING_TITLE_3 =>
        context.kTexts.HEADING_TITLE_3.copyWith(color: color),
      KTextStyle.HEADING_TITLE_4 =>
        context.kTexts.HEADING_TITLE_4.copyWith(color: color),
      KTextStyle.HEADING_TITLE_5 =>
        context.kTexts.HEADING_TITLE_5.copyWith(color: color),
      KTextStyle.HEADING_TITLE_6 =>
        context.kTexts.HEADING_TITLE_6.copyWith(color: color),
      KTextStyle.TEXT_EXTRA_LARGE_REGULAR =>
        context.kTexts.TEXT_EXTRALARGE_REGULAR.copyWith(color: color),
      KTextStyle.TEXT_EXTRA_LARGE_MEDIUM =>
        context.kTexts.TEXT_EXTRALARGE_MEDIUM.copyWith(color: color),
      KTextStyle.TEXT_EXTRA_LARGE_BOLD =>
        context.kTexts.TEXT_EXTRALARGE_BOLD.copyWith(color: color),
      KTextStyle.TEXT_EXTRA_LARGE_UNDERLINED =>
        context.kTexts.TEXT_EXTRALARGE_UNDERLINED.copyWith(color: color),
      KTextStyle.TEXT_LARGE_REGULAR =>
        context.kTexts.TEXT_LARGE_REGULAR.copyWith(color: color),
      KTextStyle.TEXT_LARGE_MEDIUM =>
        context.kTexts.TEXT_LARGE_MEDIUM.copyWith(color: color),
      KTextStyle.TEXT_LARGE_BOLD =>
        context.kTexts.TEXT_LARGE_BOLD.copyWith(color: color),
      KTextStyle.TEXT_LARGE_UNDERLINED =>
        context.kTexts.TEXT_LARGE_UNDERLINED.copyWith(color: color),
      KTextStyle.TEXT_NORMAL_REGULAR =>
        context.kTexts.TEXT_NORMAL_REGULAR.copyWith(color: color),
      KTextStyle.TEXT_NORMAL_MEDIUM =>
        context.kTexts.TEXT_NORMAL_MEDIUM.copyWith(color: color),
      KTextStyle.TEXT_NORMAL_BOLD =>
        context.kTexts.TEXT_NORMAL_BOLD.copyWith(color: color),
      KTextStyle.TEXT_NORMAL_UNDERLINED =>
        context.kTexts.TEXT_NORMAL_UNDERLINED.copyWith(color: color),
      KTextStyle.TEXT_SMALL_REGULAR =>
        context.kTexts.TEXT_SMALL_REGULAR.copyWith(color: color),
      KTextStyle.TEXT_SMALL_MEDIUM =>
        context.kTexts.TEXT_SMALL_MEDIUM.copyWith(color: color),
      KTextStyle.TEXT_SMALL_BOLD =>
        context.kTexts.TEXT_SMALL_BOLD.copyWith(color: color),
      KTextStyle.TEXT_SMALL_UNDERLINED =>
        context.kTexts.TEXT_SMALL_UNDERLINED.copyWith(color: color),
    };
    return baseStyle;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getTextStyle(context, style),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

enum KTextStyle {
  HEADING_TITLE_1,
  HEADING_TITLE_2,
  HEADING_TITLE_3,
  HEADING_TITLE_4,
  HEADING_TITLE_5,
  HEADING_TITLE_6,

  TEXT_EXTRA_LARGE_REGULAR,
  TEXT_EXTRA_LARGE_MEDIUM,
  TEXT_EXTRA_LARGE_BOLD,
  TEXT_EXTRA_LARGE_UNDERLINED,

  TEXT_LARGE_REGULAR,
  TEXT_LARGE_MEDIUM,
  TEXT_LARGE_BOLD,
  TEXT_LARGE_UNDERLINED,

  TEXT_NORMAL_REGULAR,
  TEXT_NORMAL_MEDIUM,
  TEXT_NORMAL_BOLD,
  TEXT_NORMAL_UNDERLINED,

  TEXT_SMALL_REGULAR,
  TEXT_SMALL_MEDIUM,
  TEXT_SMALL_BOLD,
  TEXT_SMALL_UNDERLINED,
}
