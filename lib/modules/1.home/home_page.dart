import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/core/services/localization/translation.dart';
import 'package:sgm_admin/modules/1.home/home_controller.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/icon_sizes.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        centerTitle: "Orbit Storybook",
        showTitle: controller.showTitle,
      ),
      body: CustomScrollView(
        controller: controller.pageScrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: KPaddings.sideDefault),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KSpaces.spaceM.height,
                  const KText('Orbit Storybook',
                      style: KTextStyle.HEADING_TITLE_1),
                  KSpaces.spaceM.height,
                  KText('Foundation'.tr, style: KTextStyle.HEADING_TITLE_2),
                  KSpaces.spaceS.height,
                  Row(
                    children: [
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.color,
                          title: "Colors".tr,
                          onPressed: controller.onColorsTap,
                        ),
                      ),
                      KSpaces.spaceS.width,
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.informationCircle,
                          title: "Icons".tr,
                          onPressed: controller.onIconsTap,
                        ),
                      ),
                    ],
                  ),
                  KSpaces.spaceS.height,
                  Row(
                    children: [
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.gallery,
                          title: "Illustrations".tr,
                          onPressed: controller.onIllustrationsTap,
                        ),
                      ),
                      KSpaces.spaceS.width,
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.color,
                          title: "Typography".tr,
                          onPressed: controller.onTypographyTap,
                        ),
                      ),
                    ],
                  ),
                  KSpaces.spaceM.height,
                  KText('Components'.tr, style: KTextStyle.HEADING_TITLE_2),
                  KSpaces.spaceS.height,
                  Row(
                    children: [
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.alert,
                          title: "Alert".tr,
                          onPressed: controller.onAlertTap,
                        ),
                      ),
                      KSpaces.spaceS.width,
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.circleFilled,
                          title: "Badge".tr,
                          onPressed: controller.onBadgeTap,
                        ),
                      ),
                    ],
                  ),
                  KSpaces.spaceS.height,
                  Row(
                    children: [
                      Expanded(
                        child: KTile(
                          iconPath: KIcons.colorIndicator,
                          title: "Buttons".tr,
                          onPressed: controller.onButtonsTap,
                        ),
                      ),
                      // KSpaces.spaceS.width,
                      // Expanded(
                      //   child: KTile(
                      //     iconPath: KIcons.circleFilled,
                      //     title: "Badge",
                      //     onPressed: controller.onBadgeTap,
                      //   ),
                      // ),
                    ],
                  ),
                  KSpaces.spaceL.height,
                  KText('Products'.tr, style: KTextStyle.HEADING_TITLE_2),
                  KSpaces.spaceS.height,
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: controller.dummyProducts.length,
            itemBuilder: (context, index) {
              log('build index $index');
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: KPaddings.sideDefault / 2),
                child: _ProductList(
                  products: controller.dummyProducts,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ProductList extends StatelessWidget {
  final List<Product> products;
  const _ProductList({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          ProdTranslation translation = BaseTranslation.getTranslation(
            translations: product.translations,
          );
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 260,
              width: 160,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.kColors.borderDefault,
                ),
                borderRadius: BorderRadius.circular(KRadii.tileRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(KRadii.tileRadius),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          product.img,
                          height: 180,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Row(
                            children: [
                              KText(
                                product.rating.toString(),
                                style: KTextStyle.TEXT_NORMAL_MEDIUM,
                              ),
                              KSpaces.spaceXXXS.width,
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: KIconSizes.iconXS,
                              ),
                              KSpaces.spaceXXXS.width,
                              KText(
                                "(${product.reviews.toString()})",
                                style: KTextStyle.TEXT_SMALL_REGULAR,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    KSpaces.spaceS.height,
                    KText(
                      translation.title,
                      style: KTextStyle.TEXT_LARGE_REGULAR,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    KSpaces.spaceXXXS.height,
                    Text.rich(
                      textDirection: TextDirection.rtl,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${"AED".tr} ",
                            style: context.kTexts.TEXT_SMALL_MEDIUM,
                          ),
                          TextSpan(
                            text: product.price.toString(),
                            style: context.kTexts.TEXT_EXTRALARGE_BOLD,
                          ),
                        ],
                      ),
                    ),
                    KSpaces.spaceXXXS.height,
                    Text(translation.brandName),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class KTile extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String? iconPath;
  final bool showTrailing;
  final VoidCallback? onPressed;
  const KTile({
    super.key,
    required this.title,
    this.subTitle,
    this.iconPath,
    this.showTrailing = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(1),
        padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
            horizontal: KPaddings.buttonInsidePadding,
            vertical: KPaddings.buttonInsidePadding / 1.2)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KRadii.tileRadius))),
        backgroundColor:
            WidgetStatePropertyAll(context.kTile.backgroundDefault),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return context.kTile.splash;
            }
            return null;
          },
        ),
      ),
      child: Row(
        children: [
          if (iconPath != null) ...[
            KIcon(
              iconPath!,
              size: KIconSizes.iconS,
            ),
            KSpaces.spaceS.width,
          ],
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                title,
                style: KTextStyle.HEADING_TITLE_4,
              ),
              if (subTitle != null) ...[
                KSpaces.spaceXS.height,
                KText(
                  subTitle!,
                  style: KTextStyle.TEXT_SMALL_REGULAR,
                ),
              ],
            ],
          ),
          const Spacer(),
          if (showTrailing)
            const KIcon(
              KIcons.forward,
              size: KIconSizes.iconXS,
            ),
        ],
      ),
    );
  }
}
