import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class InkColors extends StatelessWidget {
  const InkColors({
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
          const KText("Ink", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_LIGHT,
                  dark: KColors.INK_LIGHT_DARK,
                  colorName: "Ink Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_LIGHT_HOVER,
                  dark: KColors.INK_LIGHT_HOVER_DARK,
                  colorName: "Ink Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_LIGHT_ACTIVE,
                  dark: KColors.INK_LIGHT_ACTIVE_DARK,
                  colorName: "Ink Light",
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
                  light: KColors.INK_NORMAL,
                  dark: KColors.INK_NORMAL_DARK,
                  colorName: "Ink Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_NORMAL_HOVER,
                  dark: KColors.INK_NORMAL_HOVER_DARK,
                  colorName: "Ink Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_NORMAL_ACTIVE,
                  dark: KColors.INK_NORMAL_ACTIVE_DARK,
                  colorName: "Ink Normal",
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
                  light: KColors.INK_DARK,
                  dark: KColors.INK_DARK_DARK,
                  colorName: "Ink Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_DARK_HOVER,
                  dark: KColors.INK_DARK_HOVER_DARK,
                  colorName: "Ink Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.INK_DARK_ACTIVE,
                  dark: KColors.INK_DARK_ACTIVE_DARK,
                  colorName: "Ink Dark",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
