import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class WhiteColors extends StatelessWidget {
  const WhiteColors({
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
          const KText("White", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          const ColorWidget(
            light: KColors.WHITE,
            dark: KColors.WHITE_DARK,
            colorName: "White",
            subtitle: ":lighter (dark-mode)",
          ),
          KSpaces.betweenItems.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.WHITE,
                  dark: KColors.WHITE_DARK,
                  colorName: "White",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.WHITE_HOVER,
                  dark: KColors.WHITE_HOVER_DARK,
                  colorName: "White",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.WHITE_ACTIVE,
                  dark: KColors.WHITE_ACTIVE_DARK,
                  colorName: "White",
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
