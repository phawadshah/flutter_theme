// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/icons/icons_controller.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';
import 'package:sgm_admin/utils/untils.dart';

class IconsPage extends GetView<IconsController> {
  const IconsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        centerTitle: "Icons",
        onLeadingTap: controller.goBack,
        showTitle: controller.showTitle,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: KPaddings.sideDefault),
        controller: controller.pageScrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KSpaces.spaceM.height,
            const KText('Icons', style: KTextStyle.HEADING_TITLE_1),
            KSpaces.spaceM.height,
            GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: KSpaces.betweenItems,
                crossAxisSpacing: KSpaces.betweenItems,
                mainAxisExtent: 85,
              ),
              children: List.generate(
                KIcons.allIcons.length,
                (index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(KSpaces.spaceXS),
                    decoration: BoxDecoration(
                      color: context.kTile.backgroundDefault,
                      borderRadius: BorderRadius.circular(KRadii.radiusXS),
                      border: Border.all(
                        color: context.kColors.borderDefault,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        KIcon(KIcons.allIcons[index]),
                        KSpaces.spaceS.height,
                        Text(
                          iconNameFromPath(KIcons.allIcons[index]),
                          style: context.kTexts.TEXT_SMALL_REGULAR.copyWith(
                            height: 0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
