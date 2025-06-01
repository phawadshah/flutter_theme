// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/common/widgets/badge.dart';
import 'package:sgm_admin/modules/badge/badge_controller.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class BadgePage extends GetView<BadgeController> {
  const BadgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        leadingTitle: "Orbit Storybook",
        onLeadingTap: controller.goBack,
        showTitle: false.obs,
        bottom: KAppBarBottom(
          title: "Badge",
          labels: const ["Basic", "Gradient"],
          onTap: controller.changeTabIndex,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: KPaddings.sideDefault),
        child: Obx(
          () => Stack(
            children: [
              _buildOffstageNavigator(0, controller.tabIndex.value),
              _buildOffstageNavigator(1, controller.tabIndex.value),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(int index, int currentIndex) {
    return Offstage(
      offstage: currentIndex != index,
      child: _tabsWidget[index],
    );
  }
}

const List<Widget> _tabsWidget = [
  _Basic(),
  _Gradient(),
];

class _Basic extends StatelessWidget {
  const _Basic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> buildBasicBadges() {
      return KBadgeType.values
          .where(
            (type) =>
                type != KBadgeType.BUNDLE_BASIC &&
                type != KBadgeType.BUNDLE_MEDIUM &&
                type != KBadgeType.BUNDLE_TOP,
          )
          .map(
            (type) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: KSpaces.betweenItems),
              child: _buildBadgeRow(type: type),
            ),
          )
          .toList();
    }

    return Column(
      children: buildBasicBadges(),
    );
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> buildBasicBadges() {
      return KBadgeType.values
          .where((type) =>
              type == KBadgeType.BUNDLE_BASIC ||
              type == KBadgeType.BUNDLE_MEDIUM ||
              type == KBadgeType.BUNDLE_TOP)
          .map((type) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: KSpaces.betweenItems),
                child: _buildBadgeRow(type: type),
              ))
          .toList();
    }

    return Column(
      children: buildBasicBadges(),
    );
  }
}

Row _buildBadgeRow({required KBadgeType type}) {
  return Row(
    children: [
      KBadge(
        label: "Label",
        type: type,
      ),
      KSpaces.spaceS.width,
      KBadge(
        label: "Label",
        iconPath: KIcons.grid,
        type: type,
      ),
      KSpaces.spaceS.width,
      KBadge(
        iconPath: KIcons.grid,
        type: type,
      ),
      KSpaces.spaceS.width,
      KBadge.circular(
        label: "1",
        type: type,
      ),
    ],
  );
}
