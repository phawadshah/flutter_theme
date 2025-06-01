import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class RedColors extends StatelessWidget {
  const RedColors({
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
          const KText("Red", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_LIGHT,
                  dark: KColors.RED_LIGHT_DARK,
                  colorName: "Red Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_LIGHT_HOVER,
                  dark: KColors.RED_LIGHT_HOVER_DARK,
                  colorName: "Red Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_LIGHT_ACTIVE,
                  dark: KColors.RED_LIGHT_ACTIVE_DARK,
                  colorName: "Red Light",
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
                  light: KColors.RED_NORMAL,
                  dark: KColors.RED_NORMAL_DARK,
                  colorName: "Red Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_NORMAL_HOVER,
                  dark: KColors.RED_NORMAL_HOVER_DARK,
                  colorName: "Red Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_NORMAL_ACTIVE,
                  dark: KColors.RED_NORMAL_ACTIVE_DARK,
                  colorName: "Red Normal",
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
                  light: KColors.RED_DARK,
                  dark: KColors.RED_DARK_DARK,
                  colorName: "Red Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_DARK_HOVER,
                  dark: KColors.RED_DARK_HOVER_DARK,
                  colorName: "Red Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.RED_DARK_ACTIVE,
                  dark: KColors.RED_DARK_ACTIVE_DARK,
                  colorName: "Red Dark",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          const ColorWidget(
            light: KColors.RED_DARKER,
            dark: KColors.RED_DARKER_DARK,
            colorName: "Red Darker",
          ),
        ],
      ),
    );
  }
}
