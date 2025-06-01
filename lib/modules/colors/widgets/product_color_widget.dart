import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/colors/widgets/color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
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
          const KText("Product", style: KTextStyle.HEADING_TITLE_4),
          KSpaces.betweenSection.height,
          Row(
            children: [
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_LIGHT,
                  dark: KColors.PRODUCT_LIGHT_DARK,
                  colorName: "Product Light",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_LIGHT_HOVER,
                  dark: KColors.PRODUCT_LIGHT_HOVER_DARK,
                  colorName: "Product Light",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_LIGHT_ACTIVE,
                  dark: KColors.PRODUCT_LIGHT_ACTIVE_DARK,
                  colorName: "Product Light",
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
                  light: KColors.PRODUCT_NORMAL,
                  dark: KColors.PRODUCT_NORMAL_DARK,
                  colorName: "Product Normal",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_NORMAL_HOVER,
                  dark: KColors.PRODUCT_NORMAL_HOVER_DARK,
                  colorName: "Product Normal",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_NORMAL_ACTIVE,
                  dark: KColors.PRODUCT_NORMAL_ACTIVE_DARK,
                  colorName: "Product Normal",
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
                  light: KColors.PRODUCT_DARK,
                  dark: KColors.PRODUCT_DARK_DARK,
                  colorName: "Product Dark",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_DARK_HOVER,
                  dark: KColors.PRODUCT_DARK_HOVER_DARK,
                  colorName: "Product Dark",
                  subtitle: ":hover",
                ),
              ),
              KSpaces.betweenItems.width,
              const Expanded(
                child: ColorWidget(
                  light: KColors.PRODUCT_DARK_ACTIVE,
                  dark: KColors.PRODUCT_DARK_ACTIVE_DARK,
                  colorName: "Product Dark",
                  subtitle: ":active",
                ),
              ),
            ],
          ),
          KSpaces.betweenItems.height,
          const ColorWidget(
            light: KColors.PRODUCT_DARKER,
            dark: KColors.PRODUCT_DARKER_DARK,
            colorName: "Product Darker",
          ),
        ],
      ),
    );
  }
}
