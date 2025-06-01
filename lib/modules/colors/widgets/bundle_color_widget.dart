import 'package:flutter/material.dart';
import 'package:sgm_admin/common/styles/gradients.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class BundleColors extends StatelessWidget {
  const BundleColors({
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
          const KText("Bundle", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              Expanded(
                child: GradientWidget(
                  colorName: "Bundle Basic",
                  subtitle: ":gradient",
                  gradient: KGradients.BUNDLE_BASIC_GRADIENT,
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BUNDLE_BASIC_START,
                  dark: KColors.BUNDLE_BASIC_START,
                  colorName: "Bundle Basic",
                  subtitle: ":start",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BUNDLE_BASIC_END,
                  dark: KColors.BUNDLE_BASIC_END,
                  colorName: "Bundle Basic",
                  subtitle: ":end",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          Row(
            children: [
              Expanded(
                child: GradientWidget(
                  colorName: "Bundle Medium",
                  subtitle: ":gradient",
                  gradient: KGradients.BUNDLE_MEDIUM_GRADIENT,
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BUNDLE_MEDIUM_START,
                  dark: KColors.BUNDLE_MEDIUM_START,
                  colorName: "Bundle Medium",
                  subtitle: ":start",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BUNDLE_MEDIUM_END,
                  dark: KColors.BUNDLE_MEDIUM_END,
                  colorName: "Bundle Medium",
                  subtitle: ":end",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          Row(
            children: [
              Expanded(
                child: GradientWidget(
                  colorName: "Bundle Top",
                  subtitle: ":gradient",
                  gradient: KGradients.BUNDLE_TOP_GRADIENT,
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BUNDLE_TOP_START,
                  dark: KColors.BUNDLE_TOP_START,
                  colorName: "Bundle Top",
                  subtitle: ":start",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.BUNDLE_TOP_END,
                  dark: KColors.BUNDLE_TOP_END,
                  colorName: "Bundle Top",
                  subtitle: ":end",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
