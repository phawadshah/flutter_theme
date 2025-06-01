// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/styles/text_styles.dart';
import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/modules/typography/typography_controller.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';
import 'package:sgm_admin/utils/untils.dart';

class TypographyPage extends GetView<TypographyController> {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        leadingTitle: "Orbit Storybook",
        onLeadingTap: controller.goBack,
        showTitle: false.obs,
        bottom: KAppBarBottom(
          title: "Typography",
          labels: const ["Text", "Heading"],
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
  _Text(),
  _Heading(),
];

class _Text extends StatelessWidget {
  const _Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Small", style: KTextStyle.TEXT_SMALL_REGULAR),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Normal", style: KTextStyle.TEXT_NORMAL_REGULAR),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Large", style: KTextStyle.TEXT_LARGE_REGULAR),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Extra Large",
            style: KTextStyle.TEXT_EXTRA_LARGE_REGULAR),
        KSpaces.spaceM.height,
        const Divider(),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Medium Small", style: KTextStyle.TEXT_SMALL_MEDIUM),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Medium Normal", style: KTextStyle.TEXT_NORMAL_MEDIUM),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Medium Large", style: KTextStyle.TEXT_LARGE_MEDIUM),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Medium Extra Large",
            style: KTextStyle.TEXT_EXTRA_LARGE_MEDIUM),
        KSpaces.spaceM.height,
        const Divider(),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Bold Small", style: KTextStyle.TEXT_SMALL_BOLD),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Bold Normal", style: KTextStyle.TEXT_NORMAL_BOLD),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Bold Large", style: KTextStyle.TEXT_LARGE_BOLD),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Bold Extra Large",
            style: KTextStyle.TEXT_EXTRA_LARGE_BOLD),
        KSpaces.betweenSection.height,
        KSpaces.betweenSection.height,
        const _TextRow(
            title: "Text Small with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_SMALL_REGULAR),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Normal with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_NORMAL_REGULAR),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Large with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_LARGE_REGULAR),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Extra Large with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_EXTRA_LARGE_REGULAR),
        KSpaces.spaceM.height,
        const Divider(),
        KSpaces.betweenSection.height,
        const _TextRow(
            title: "Text Medium Small with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_SMALL_MEDIUM),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Medium Normal with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_NORMAL_MEDIUM),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Medium Large with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_LARGE_MEDIUM),
        KSpaces.spaceM.height,
        const _TextRow(
            title:
                "Text Medium Extra Large with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_EXTRA_LARGE_MEDIUM),
        KSpaces.spaceM.height,
        const Divider(),
        KSpaces.betweenSection.height,
        const _TextRow(
            title: "Text Bold Small with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_SMALL_BOLD),
        KSpaces.spaceM.height,
        const _TextRow(
            title:
                "Text Bold Medium Normal with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_NORMAL_BOLD),
        KSpaces.spaceM.height,
        const _TextRow(
            title: "Text Bold Medium Large with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_LARGE_BOLD),
        KSpaces.spaceM.height,
        const _TextRow(
            title:
                "Text Bold Medium Extra Large with a very very very very large and"
                "multiline text",
            style: KTextStyle.TEXT_EXTRA_LARGE_BOLD),
        KSpaces.spaceM.height,
      ],
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KSpaces.spaceM.height,
        const KText("Title 1", style: KTextStyle.HEADING_TITLE_1),
        KSpaces.betweenTexts.height,
        const KText("Title 2", style: KTextStyle.HEADING_TITLE_2),
        KSpaces.betweenTexts.height,
        const KText("Title 3", style: KTextStyle.HEADING_TITLE_3),
        KSpaces.betweenTexts.height,
        const KText("Title 4", style: KTextStyle.HEADING_TITLE_4),
        KSpaces.betweenTexts.height,
        const KText("Title 5", style: KTextStyle.HEADING_TITLE_5),
        KSpaces.betweenTexts.height,
        const KText("Title 6", style: KTextStyle.HEADING_TITLE_6),
        KSpaces.betweenSection.height,
        KSpaces.spaceM.height,
        const KText("Title 1 with a very large and multiline content",
            style: KTextStyle.HEADING_TITLE_1),
        KSpaces.betweenTexts.height,
        const KText("Title 2 with a very large and multiline content",
            style: KTextStyle.HEADING_TITLE_2),
        KSpaces.betweenTexts.height,
        const KText("Title 3 with a very large and multiline content",
            style: KTextStyle.HEADING_TITLE_3),
        KSpaces.betweenTexts.height,
        const KText("Title 4 with a very large and multiline content",
            style: KTextStyle.HEADING_TITLE_4),
        KSpaces.betweenTexts.height,
        const KText("Title 5 with a very large and multiline content",
            style: KTextStyle.HEADING_TITLE_5),
        KSpaces.betweenTexts.height,
        const KText("Title 6 with a very large and multiline content",
            style: KTextStyle.HEADING_TITLE_6),
      ],
    );
  }
}

class _TextRow extends StatelessWidget {
  final String title;
  final KTextStyle style;
  const _TextRow({
    super.key,
    required this.title,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = KTextStyles.getStyleByName(style.name);
    return Row(
      children: [
        Expanded(
          child: KText(title, style: style),
        ),
        KSpaces.spaceXL.width,
        KText(
          decimalToFraction(textStyle?.height ?? 0.0),
          style: style,
        ),
      ],
    );
  }
}
