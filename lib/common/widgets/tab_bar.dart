import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/tab.dart';

import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';

class KTabBar extends StatefulWidget {
  final List<String> labels;
  final void Function(int)? onTap;
  final int initialIndex;
  const KTabBar({
    super.key,
    required this.labels,
    this.onTap,
    this.initialIndex = 0,
  });

  @override
  State<KTabBar> createState() => _KTabBarState();
}

class _KTabBarState extends State<KTabBar> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(KRadii.tabRadius),
        color: context.kTabs.background,
        border: Border.all(color: context.kTabs.border),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: List.generate(
            widget.labels.length,
            (index) {
              bool isSelected = currentIndex == index;
              return Expanded(
                child: KTab(
                  isSelected: isSelected,
                  label: widget.labels[index],
                  onTap: () {
                    onTap(index);
                    widget.onTap?.call(index);
                  },
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
