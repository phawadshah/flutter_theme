import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/tab_bar.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/core/initials/controller/theme_controller.dart';
import 'package:sgm_admin/core/services/localization/localization.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/icon_sizes.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class KAppBar extends GetView<ThemeController> implements PreferredSizeWidget {
  final String? centerTitle;
  final String? leadingTitle;
  final void Function()? onLeadingTap;
  final RxBool showTitle;
  final PreferredSizeWidget? bottom;
  const KAppBar({
    super.key,
    this.centerTitle,
    this.leadingTitle,
    this.onLeadingTap,
    required this.showTitle,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: bottom == null
            ? null
            : Border(
                bottom: BorderSide(
                  color: context.kColors.borderDefault,
                ),
              ),
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        surfaceTintColor: bottom != null ? Colors.transparent : null,
        shadowColor: bottom != null ? Colors.transparent : null,
        title: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              onLeadingTap == null
                  ? const Spacer()
                  : Expanded(
                      child: Row(
                        children: [
                          KIcon(
                            KIcons.back,
                            onPressed: onLeadingTap,
                            size: KIconSizes.iconXL,
                          ),
                          KText(
                            leadingTitle ?? "Orbit Storybook",
                            style: KTextStyle.TEXT_EXTRA_LARGE_REGULAR,
                          ),
                        ],
                      ),
                    ),
              showTitle.value
                  ? Expanded(
                      child: KText(
                        centerTitle!,
                        style: KTextStyle.TEXT_EXTRA_LARGE_BOLD,
                        textAlign: TextAlign.start,
                      ),
                    )
                  : const Spacer(),
              KIcon(
                KIcons.sun,
                onPressed: controller.toggleTheme,
              ),
              KSpaces.spaceXS.width,
              KIcon(
                KIcons.airConditioning,
                onPressed: () {
                  Locale? locale = Get.locale;
                  if (locale != null) {
                    Get.updateLocale(
                      locale == AppLocales.ENGLISH
                          ? AppLocales.ARABIC
                          : AppLocales.ENGLISH,
                    );
                  }
                },
              ),
              KSpaces.spaceXS.width,
            ],
          ),
        ),
        bottom: bottom,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom == null ? kToolbarHeight : 160);
}

class KAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<String> labels;
  final void Function(int index)? onTap;
  const KAppBarBottom({
    super.key,
    required this.title,
    required this.labels,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: KPaddings.sideDefault,
        vertical: KPaddings.sideDefault / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(title, style: KTextStyle.HEADING_TITLE_1),
          KSpaces.spaceM.height,
          KTabBar(
            labels: labels,
            onTap: onTap,
          ),
          KSpaces.spaceXS.height,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
