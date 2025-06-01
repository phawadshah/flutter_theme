import 'package:flutter/material.dart';
import 'package:sgm_admin/common/styles/elevations.dart';

import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class KTab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final void Function()? onTap;

  const KTab({
    super.key,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: KPaddings.buttonInsidePadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(KRadii.tabRadius),
          color: isSelected ? context.kTabs.backgroundActive : null,
          boxShadow: isSelected ? KElevations.level1 : [],
        ),
        child: Center(
          child: Text(
            label,
            style: context.kTexts.TEXT_NORMAL_MEDIUM
                .copyWith(color: context.kTabs.textColor),
          ),
        ),
      ),
    );
  }
}
