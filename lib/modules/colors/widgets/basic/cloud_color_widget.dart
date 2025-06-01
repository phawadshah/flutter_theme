import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class CloudColors extends StatelessWidget {
  const CloudColors({
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
          const KText("Cloud", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_LIGHT,
                  dark: KColors.CLOUD_LIGHT_DARK,
                  colorName: "Cloud Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_LIGHT_HOVER,
                  dark: KColors.CLOUD_LIGHT_HOVER_DARK,
                  colorName: "Cloud Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_LIGHT_ACTIVE,
                  dark: KColors.CLOUD_LIGHT_ACTIVE_DARK,
                  colorName: "Cloud Light",
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
                  light: KColors.CLOUD_NORMAL,
                  dark: KColors.CLOUD_NORMAL_DARK,
                  colorName: "Cloud Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_NORMAL_HOVER,
                  dark: KColors.CLOUD_NORMAL_HOVER_DARK,
                  colorName: "Cloud Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_NORMAL_ACTIVE,
                  dark: KColors.CLOUD_NORMAL_ACTIVE_DARK,
                  colorName: "Cloud Normal",
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
                  light: KColors.CLOUD_DARK,
                  dark: KColors.CLOUD_DARK_DARK,
                  colorName: "Cloud Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_DARK_HOVER,
                  dark: KColors.CLOUD_DARK_HOVER_DARK,
                  colorName: "Cloud Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.CLOUD_DARK_ACTIVE,
                  dark: KColors.CLOUD_DARK_ACTIVE_DARK,
                  colorName: "Cloud Dark",
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
