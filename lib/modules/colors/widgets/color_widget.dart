import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/styles/elevations.dart';
import 'package:sgm_admin/common/styles/gradients.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/icon_sizes.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';
import 'package:sgm_admin/utils/untils.dart';

class ColorWidget extends StatelessWidget {
  final Color light;
  final Color dark;
  final String colorName;
  final String? subtitle;
  const ColorWidget({
    super.key,
    required this.light,
    required this.dark,
    required this.colorName,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    bool isLight = theme.brightness == Brightness.light;
    Color color = isLight ? light : dark;
    return Container(
      decoration: BoxDecoration(
        color: KColors.WHITE,
        boxShadow: KElevations.level1,
        borderRadius: BorderRadius.circular(KRadii.radiusXS),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Color
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(KRadii.radiusXS),
                topRight: Radius.circular(KRadii.radiusXS),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: KPaddings.sideDefault,
                  vertical: KPaddings.sideDefault / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  KText(
                    colorToHex(color),
                    style: KTextStyle.TEXT_SMALL_BOLD,
                  ),
                  const Spacer(),
                  KIcon(
                    KIcons.colorIndicator,
                    linearGradient: KGradients.BUNDLE_BASIC_GRADIENT,
                    size: KIconSizes.iconL,
                  ),
                ],
              ),
            ),
          ),
          // Color Text
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(
              horizontal: KPaddings.sideDefault / 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KSpaces.betweenItems.height,
                Text(
                  colorName,
                  style: context.kTexts.HEADING_TITLE_5
                      .copyWith(color: KColors.INK_DARK),
                ),
                KSpaces.betweenTexts.height,
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: context.kTexts.TEXT_SMALL_REGULAR
                        .copyWith(color: KColors.INK_DARK),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GradientWidget extends StatelessWidget {
  final Gradient? gradient;
  final String colorName;
  final String? subtitle;
  const GradientWidget({
    super.key,
    required this.colorName,
    this.gradient,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: KColors.WHITE,
        boxShadow: KElevations.level1,
        borderRadius: BorderRadius.circular(KRadii.radiusXS),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Color
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(KRadii.radiusXS),
                topRight: Radius.circular(KRadii.radiusXS),
              ),
            ),
          ),
          // Color Text
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(
              horizontal: KPaddings.sideDefault / 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KSpaces.betweenItems.height,
                Text(
                  colorName,
                  style: context.kTexts.HEADING_TITLE_5
                      .copyWith(color: KColors.INK_DARK),
                ),
                KSpaces.betweenTexts.height,
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: context.kTexts.TEXT_SMALL_REGULAR
                        .copyWith(color: KColors.INK_DARK),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
