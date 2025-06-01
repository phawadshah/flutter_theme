// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/styles/gradients.dart';
import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/common/widgets/badge.dart';
import 'package:sgm_admin/common/widgets/button.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/status_button.dart';
import 'package:sgm_admin/modules/buttons/buttons_controller.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class ButtonsPage extends GetView<ButtonsController> {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        leadingTitle: "Orbit Storybook",
        onLeadingTap: controller.goBack,
        showTitle: false.obs,
        bottom: KAppBarBottom(
          title: "Buttons",
          labels: const ["Basic", "Status", "Gradient", "Mix"],
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
              _buildOffstageNavigator(2, controller.tabIndex.value),
              _buildOffstageNavigator(3, controller.tabIndex.value),
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

List<Widget> _tabsWidget = [
  const _Basic(),
  const _Status(),
  const _Gradient(),
  const _Mix(),
];

class _Basic extends StatelessWidget {
  const _Basic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> getButtons() {
      return KButtonStyle.values
          .where((style) =>
              style != KButtonStyle.BUNDLE_BASIC &&
              style != KButtonStyle.BUNDLE_MEDIUM &&
              style != KButtonStyle.BUNDLE_TOP)
          .map(
            (style) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: KSpaces.betweenItems),
              child: _buildButtons(style: style),
            ),
          )
          .toList();
    }

    return Column(children: [
      ...getButtons(),
      KSpaces.betweenSection.height,
    ]);
  }
}

class _Status extends StatelessWidget {
  const _Status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> getButtons() {
      return KStatusButtonStyle.values
          .map(
            (style) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: KSpaces.betweenItems),
              child: Row(
                children: [
                  KStatusButton(
                    label: "Label",
                    style: style,
                  ),
                  KSpaces.spaceXS.width,
                  KStatusButton(
                    iconPath: KIcons.grid,
                    label: "Lable",
                    style: style,
                    trailingPath: KIcons.forward,
                  ),
                  KSpaces.spaceXS.width,
                  KStatusButton(
                    label: "Label",
                    style: style,
                    trailingPath: KIcons.forward,
                  ),
                  KSpaces.spaceXS.width,
                  KStatusButton(
                    iconPath: KIcons.grid,
                    style: style,
                  ),
                ],
              ),
            ),
          )
          .toList();
    }

    return Column(children: [
      ...getButtons(),
      KSpaces.betweenSection.height,
    ]);
  }
}

class _Gradient extends StatelessWidget {
  const _Gradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> getButtons() {
      return KButtonStyle.values
          .where((style) =>
              style == KButtonStyle.BUNDLE_BASIC ||
              style == KButtonStyle.BUNDLE_MEDIUM ||
              style == KButtonStyle.BUNDLE_TOP)
          .map(
            (style) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: KSpaces.betweenItems),
              child: _buildButtons(style: style),
            ),
          )
          .toList();
    }

    return Column(
      children: [
        ...getButtons(),
        KSpaces.betweenSection.height,
      ],
    );
  }
}

class _Mix extends StatelessWidget {
  const _Mix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> getButtons() {
      return KButtonStyle.values
          .where((style) =>
              style == KButtonStyle.BUNDLE_BASIC ||
              style == KButtonStyle.BUNDLE_MEDIUM ||
              style == KButtonStyle.BUNDLE_TOP)
          .map(
            (style) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: KSpaces.betweenItems),
              child: _buildButtons(style: style),
            ),
          )
          .toList();
    }

    return Column(
      children: [
        KSpaces.betweenItems.height,
        const KButton(
          iconPath: KIcons.informationCircle,
          label: "Button with SF Symbol",
        ),
        KSpaces.betweenItems.height,
        const KButton(
          label: "Button with Flag",
        ),
        KSpaces.betweenItems.height,
        const KButton(
          label: "Button with Image",
        ),
      ],
    );
  }
}

Widget _buildButtons({required KButtonStyle style}) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: KButton(
              label: "Label",
              style: style,
            ),
          ),
          KSpaces.spaceS.width,
          Expanded(
            child: KButton(
              iconPath: (KIcons.grid),
              label: "Label",
              style: style,
            ),
          ),
        ],
      ),
      KSpaces.spaceXS.height,
      Row(
        children: [
          Expanded(
            child: KButton(
              label: "Label",
              style: style,
              trailingPath: (KIcons.forward),
            ),
          ),
          KSpaces.spaceS.width,
          Expanded(
            child: KButton(
              iconPath: (KIcons.grid),
              label: "Label",
              style: style,
              trailingPath: (KIcons.forward),
            ),
          ),
        ],
      ),
      KSpaces.spaceXS.height,
      Row(
        children: [
          Expanded(
            flex: 1,
            child: KButton(
              label: "Label",
              style: style,
            ),
          ),
          KSpaces.spaceS.width,
          Expanded(
            flex: 2,
            child: KButton(
              iconPath: (KIcons.grid),
              style: style,
            ),
          ),
        ],
      ),
      KSpaces.spaceXS.height,
      Row(
        children: [
          Expanded(
            flex: 1,
            child: KButton(
              label: "Label",
              style: style,
            ),
          ),
          KSpaces.spaceS.width,
          Expanded(
            flex: 3,
            child: KButton(
              iconPath: (KIcons.grid),
              style: style,
            ),
          ),
        ],
      ),
    ],
  );
}
