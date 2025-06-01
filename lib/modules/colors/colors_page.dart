// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/modules/colors/colors_controller.dart';
import 'package:sgm_admin/modules/colors/widgets/bundle_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/product_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/status/blue_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/basic/cloud_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/basic/ink_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/basic/white_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/status/green_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/status/orange_color_widget.dart';
import 'package:sgm_admin/modules/colors/widgets/status/red_color_widget.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class ColorsPage extends GetView<ColorsController> {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        centerTitle: "Colors",
        leadingTitle: "Orbit Storybook",
        onLeadingTap: controller.goBack,
        showTitle: false.obs,
        bottom: KAppBarBottom(
          title: "Colors",
          labels: const ["Basic", "Status", "Product", "Bundle"],
          onTap: controller.changeTabIndex,
        ),
      ),
      body: SingleChildScrollView(
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

const List<Widget> _tabsWidget = [
  _Basic(),
  _Status(),
  _Product(),
  _Bundle(),
];

class _Basic extends StatelessWidget {
  const _Basic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KSpaces.betweenSection.height,
        const WhiteColors(),
        (KSpaces.betweenSection * 2).height,
        const CloudColors(),
        (KSpaces.betweenSection * 2).height,
        const InkColors(),
        (KSpaces.betweenSection * 2).height,
      ],
    );
  }
}

class _Status extends StatelessWidget {
  const _Status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KSpaces.betweenSection.height,
        const BlueColors(),
        (KSpaces.betweenSection * 2).height,
        const RedColors(),
        (KSpaces.betweenSection * 2).height,
        const GreenColors(),
        (KSpaces.betweenSection * 2).height,
        const OrangeColors(),
        (KSpaces.betweenSection * 2).height,
      ],
    );
  }
}

class _Product extends StatelessWidget {
  const _Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KSpaces.betweenSection.height,
        const ProductColors(),
        (KSpaces.betweenSection).height,
      ],
    );
  }
}

class _Bundle extends StatelessWidget {
  const _Bundle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KSpaces.betweenSection.height,
        const BundleColors(),
        (KSpaces.betweenSection).height,
      ],
    );
  }
}
