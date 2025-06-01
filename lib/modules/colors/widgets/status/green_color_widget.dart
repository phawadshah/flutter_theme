import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class GreenColors extends StatelessWidget {
  const GreenColors({
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
          const KText("Green", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_LIGHT,
                  dark: KColors.GREEN_LIGHT_DARK,
                  colorName: "Green Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_LIGHT_HOVER,
                  dark: KColors.GREEN_LIGHT_HOVER_DARK,
                  colorName: "Green Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_LIGHT_ACTIVE,
                  dark: KColors.GREEN_LIGHT_ACTIVE_DARK,
                  colorName: "Green Light",
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
                  light: KColors.GREEN_NORMAL,
                  dark: KColors.GREEN_NORMAL_DARK,
                  colorName: "Green Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_NORMAL_HOVER,
                  dark: KColors.GREEN_NORMAL_HOVER_DARK,
                  colorName: "Green Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_NORMAL_ACTIVE,
                  dark: KColors.GREEN_NORMAL_ACTIVE_DARK,
                  colorName: "Green Normal",
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
                  light: KColors.GREEN_DARK,
                  dark: KColors.GREEN_DARK_DARK,
                  colorName: "Green Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_DARK_HOVER,
                  dark: KColors.GREEN_DARK_HOVER_DARK,
                  colorName: "Green Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.GREEN_DARK_ACTIVE,
                  dark: KColors.GREEN_DARK_ACTIVE_DARK,
                  colorName: "Green Dark",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          const ColorWidget(
            light: KColors.GREEN_DARKER,
            dark: KColors.GREEN_DARKER_DARK,
            colorName: "Green Darker",
          ),
        ],
      ),
    );
  }
}
