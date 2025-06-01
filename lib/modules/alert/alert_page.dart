// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/common/widgets/alert.dart';
import 'package:sgm_admin/common/widgets/appbar.dart';
import 'package:sgm_admin/common/widgets/button.dart';
import 'package:sgm_admin/modules/alert/alert_controller.dart';

import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class AlertPage extends GetView<AlertController> {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        leadingTitle: "Orbit Storybook",
        onLeadingTap: controller.goBack,
        showTitle: false.obs,
        bottom: KAppBarBottom(
          title: "Alert",
          labels: const ["Basic", "Inline", "Mix", "Live"],
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

const List<Widget> _tabsWidget = [
  _Basic(),
  _Inline(),
  _Mix(),
  _Live(),
];

class _Basic extends StatelessWidget {
  const _Basic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        alerts.length,
        (index) {
          final alert = alerts[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: KSpaces.spaceXS),
            child: KAlertDialog(
              title: alert["title"],
              description: alert["description"],
              primaryButtonText: alert['primaryButtonText'],
              secondaryButtonText: alert['secondaryButtonText'],
              type: alert['type'],
              hideIcon: alert['hideIcon'] ?? false,
            ),
          );
        },
      ).toList(),
    );
  }
}

class _Inline extends StatelessWidget {
  const _Inline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        alerts.length,
        (index) {
          final alert = alerts[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: KSpaces.spaceXS),
            child: KAlertDialog(
              title: alert["title"],
              primaryButtonText: alert['primaryButtonText'],
              secondaryButtonText: alert['secondaryButtonText'],
              type: alert['type'],
              hideIcon: alert['hideIcon'] ?? false,
            ),
          );
        },
      ).toList(),
    );
  }
}

class _Mix extends StatelessWidget {
  const _Mix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        mixAlerts.length,
        (index) {
          final alert = mixAlerts[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: KSpaces.spaceXS),
            child: KAlertDialog(
              title: alert["title"],
              description: alert["description"],
              primaryButtonText: alert['primaryButtonText'],
              type: alert['type'],
              hideIcon: alert['hideIcon'] ?? false,
            ),
          );
        },
      ).toList(),
    );
  }
}

class _Live extends StatefulWidget {
  const _Live({
    super.key,
  });

  @override
  State<_Live> createState() => _LiveState();
}

class _LiveState extends State<_Live> {
  int index = 0;

  void _toggleButtons() {
    index++;
    if (index > 3) {
      index = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> live = [
      {
        "title": "Title",
        "description": alertDescription,
        "primaryButtonText": "Primary",
        "secondaryButtonText": "Secondary",
        "type": KAlertType.INFO_ACTIVE,
      },
      {
        "title": "Title",
        "description": alertDescription,
        "type": KAlertType.INFO_ACTIVE,
      },
      {
        "title": "Title",
        "description": alertDescription,
        "primaryButtonText": "Primary",
        "type": KAlertType.INFO_ACTIVE,
      },
      {
        "title": "Title",
        "description": alertDescription,
        "secondaryButtonText": "Secondary",
        "type": KAlertType.INFO_ACTIVE,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KSpaces.spaceM.height,
        KAlertDialog(
          title: live[index]["title"],
          description: live[index]["description"],
          primaryButtonText: live[index]['primaryButtonText'],
          secondaryButtonText: live[index]['secondaryButtonText'],
          type: live[index]['type'],
          hideIcon: live[index]['hideIcon'] ?? false,
        ),
        KSpaces.spaceM.height,
        KButton(
          label: "Toggle",
          onPressed: _toggleButtons,
        ),
      ],
    );
  }
}
