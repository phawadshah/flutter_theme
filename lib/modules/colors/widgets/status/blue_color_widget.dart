import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class BlueColors extends StatelessWidget {
  const BlueColors({
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
          const KText("Blue", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_LIGHT,
                  dark: KColors.BLUE_LIGHT_DARK,
                  colorName: "Blue Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_LIGHT_HOVER,
                  dark: KColors.BLUE_LIGHT_HOVER_DARK,
                  colorName: "Blue Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_LIGHT_ACTIVE,
                  dark: KColors.BLUE_LIGHT_ACTIVE_DARK,
                  colorName: "Blue Light",
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
                  light: KColors.BLUE_NORMAL,
                  dark: KColors.BLUE_NORMAL_DARK,
                  colorName: "Blue Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_NORMAL_HOVER,
                  dark: KColors.BLUE_NORMAL_HOVER_DARK,
                  colorName: "Blue Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_NORMAL_ACTIVE,
                  dark: KColors.BLUE_NORMAL_ACTIVE_DARK,
                  colorName: "Blue Normal",
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
                  light: KColors.BLUE_DARK,
                  dark: KColors.BLUE_DARK_DARK,
                  colorName: "Blue Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_DARK_HOVER,
                  dark: KColors.BLUE_DARK_HOVER_DARK,
                  colorName: "Blue Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BLUE_DARK_ACTIVE,
                  dark: KColors.BLUE_DARK_ACTIVE_DARK,
                  colorName: "Blue Dark",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          const ColorWidget(
            light: KColors.BLUE_DARKER,
            dark: KColors.BLUE_DARKER_DARK,
            colorName: "Blue Darker",
          ),
        ],
      ),
    );
  }
}
