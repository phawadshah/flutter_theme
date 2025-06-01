import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class OrangeColors extends StatelessWidget {
  const OrangeColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: KPaddings.sideDefault,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const KText("Orange", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_LIGHT,
                  dark: KColors.ORANGE_LIGHT_DARK,
                  colorName: "Orange Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_LIGHT_HOVER,
                  dark: KColors.ORANGE_LIGHT_HOVER_DARK,
                  colorName: "Orange Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_LIGHT_ACTIVE,
                  dark: KColors.ORANGE_LIGHT_ACTIVE_DARK,
                  colorName: "Orange Light",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_NORMAL,
                  dark: KColors.ORANGE_NORMAL_DARK,
                  colorName: "Orange Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_NORMAL_HOVER,
                  dark: KColors.ORANGE_NORMAL_HOVER_DARK,
                  colorName: "Orange Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_NORMAL_ACTIVE,
                  dark: KColors.ORANGE_NORMAL_ACTIVE_DARK,
                  colorName: "Orange Normal",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_DARK,
                  dark: KColors.ORANGE_DARK_DARK,
                  colorName: "Orange Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_DARK_HOVER,
                  dark: KColors.ORANGE_DARK_HOVER_DARK,
                  colorName: "Orange Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.ORANGE_DARK_ACTIVE,
                  dark: KColors.ORANGE_DARK_ACTIVE_DARK,
                  colorName: "Orange Dark",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          const ColorWidget(
            light: KColors.ORANGE_DARKER,
            dark: KColors.ORANGE_DARKER_DARK,
            colorName: "Orange Darker",
          ),
        ],
      ),
    );
  }
}
