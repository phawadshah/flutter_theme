// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';

class KTextStyles {
  KTextStyles._();

  static const FontWeight _book = FontWeight.w400;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _bold = FontWeight.bold;

  // ======================== HEADING ==========================

  static TextStyle HEADING_TITLE = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle HEADING_TITLE_1 = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle HEADING_TITLE_2 = GoogleFonts.roboto(
    fontSize: 22,
    fontWeight: _medium,
    color: KColors.INK_DARK,
  );
  static TextStyle HEADING_TITLE_3 = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: _medium,
    color: KColors.INK_DARK,
  );
  static TextStyle HEADING_TITLE_4 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle HEADING_TITLE_5 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle HEADING_TITLE_6 = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );

  // ======================== TEXTS ==========================
  // EXTRA LARGE
  static TextStyle TEXT_EXTRALARGE_REGULAR = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: _book,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_EXTRALARGE_MEDIUM = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: _medium,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_EXTRALARGE_BOLD = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_EXTRALARGE_UNDERLINED = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: _medium,
    color: KColors.INK_DARK,
    decoration: TextDecoration.underline,
    decorationColor: KColors.INK_DARK,
  );

  // LARGE
  static TextStyle TEXT_LARGE_REGULAR = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: _book,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_LARGE_MEDIUM = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: _medium,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_LARGE_BOLD = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_LARGE_UNDERLINED = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: _medium,
    color: KColors.INK_DARK,
    decoration: TextDecoration.underline,
    decorationColor: KColors.INK_DARK,
  );

  // NORMAL
  static TextStyle TEXT_NORMAL_REGULAR = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: _book,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_NORMAL_MEDIUM = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: _medium,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_NORMAL_BOLD = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_NORMAL_UNDERLINED = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: _medium,
    color: KColors.INK_DARK,
    decoration: TextDecoration.underline,
    decorationColor: KColors.INK_DARK,
  );

  // SMALL
  static TextStyle TEXT_SMALL_REGULAR = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: _book,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_SMALL_MEDIUM = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: _medium,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_SMALL_BOLD = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: _bold,
    color: KColors.INK_DARK,
  );
  static TextStyle TEXT_SMALL_UNDERLINED = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: _book,
    color: KColors.INK_DARK,
    decoration: TextDecoration.underline,
    decorationColor: KColors.INK_DARK,
  );

  // Store styles in a map
  static final Map<String, TextStyle> _styles = {
    KTextStyle.HEADING_TITLE_1.name: HEADING_TITLE_1,
    KTextStyle.HEADING_TITLE_2.name: HEADING_TITLE_2,
    KTextStyle.HEADING_TITLE_3.name: HEADING_TITLE_3,
    KTextStyle.HEADING_TITLE_4.name: HEADING_TITLE_4,
    KTextStyle.HEADING_TITLE_5.name: HEADING_TITLE_5,
    KTextStyle.HEADING_TITLE_6.name: HEADING_TITLE_6,
    KTextStyle.TEXT_EXTRA_LARGE_REGULAR.name: TEXT_EXTRALARGE_REGULAR,
    KTextStyle.TEXT_EXTRA_LARGE_MEDIUM.name: TEXT_EXTRALARGE_MEDIUM,
    KTextStyle.TEXT_EXTRA_LARGE_BOLD.name: TEXT_EXTRALARGE_BOLD,
    KTextStyle.TEXT_EXTRA_LARGE_UNDERLINED.name: TEXT_EXTRALARGE_UNDERLINED,
    KTextStyle.TEXT_LARGE_REGULAR.name: TEXT_LARGE_REGULAR,
    KTextStyle.TEXT_LARGE_MEDIUM.name: TEXT_LARGE_MEDIUM,
    KTextStyle.TEXT_LARGE_BOLD.name: TEXT_LARGE_BOLD,
    KTextStyle.TEXT_LARGE_UNDERLINED.name: TEXT_LARGE_UNDERLINED,
    KTextStyle.TEXT_NORMAL_REGULAR.name: TEXT_NORMAL_REGULAR,
    KTextStyle.TEXT_NORMAL_MEDIUM.name: TEXT_NORMAL_MEDIUM,
    KTextStyle.TEXT_NORMAL_BOLD.name: TEXT_NORMAL_BOLD,
    KTextStyle.TEXT_NORMAL_UNDERLINED.name: TEXT_NORMAL_UNDERLINED,
    KTextStyle.TEXT_SMALL_REGULAR.name: TEXT_SMALL_REGULAR,
    KTextStyle.TEXT_SMALL_MEDIUM.name: TEXT_SMALL_MEDIUM,
    KTextStyle.TEXT_SMALL_BOLD.name: TEXT_SMALL_BOLD,
    KTextStyle.TEXT_SMALL_UNDERLINED.name: TEXT_SMALL_UNDERLINED,
  };

  // Fetch TextStyle dynamically using enum name
  static TextStyle? getStyleByName(String name) {
    return _styles[name];
  }
}
