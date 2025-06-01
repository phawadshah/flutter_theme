// ignore_for_file: unused_element, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sgm_admin/common/styles/gradients.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/icon_sizes.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class KBadge extends StatelessWidget {
  final String? label;
  final String? iconPath;
  final KBadgeType type;

  bool isCircular;
  KBadge({
    super.key,
    this.label,
    this.iconPath,
    this.type = KBadgeType.NEUTRAL,
  }) : isCircular = false;

  KBadge.circular({
    super.key,
    this.label,
    this.iconPath,
    this.type = KBadgeType.NEUTRAL,
  }) : isCircular = true;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color foregroundColor;
    Color borderColor;
    LinearGradient? linearGradient;
    bool showGradient = false;

    switch (type) {
      case KBadgeType.LIGHT:
        backgroundColor = context.kBadge.lightBackgroundColor;
        foregroundColor = context.kBadge.lightForegroundColor;
        borderColor = context.kBadge.lightBorderColor;
        break;
      case KBadgeType.LIGHT_ACTIVE:
        backgroundColor = context.kBadge.lightActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        break;
      case KBadgeType.NEUTRAL:
        backgroundColor = context.kBadge.neutralBackgroundColor;
        foregroundColor = context.kBadge.neutralForegroundColor;
        borderColor = context.kBadge.neutralBorderColor;
        break;
      case KBadgeType.INFO:
        backgroundColor = context.kBadge.infoBackgroundColor;
        foregroundColor = context.kBadge.infoForegroundColor;
        borderColor = context.kBadge.infoBorderColor;
        break;
      case KBadgeType.INFO_ACTIVE:
        backgroundColor = context.kBadge.infoActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        break;
      case KBadgeType.SUCCESS:
        backgroundColor = context.kBadge.successBackgroundColor;
        foregroundColor = context.kBadge.successForegroundColor;
        borderColor = context.kBadge.successBorderColor;
        break;
      case KBadgeType.SUCCESS_ACTIVE:
        backgroundColor = context.kBadge.successActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        break;
      case KBadgeType.WARNING:
        backgroundColor = context.kBadge.warningBackgroundColor;
        foregroundColor = context.kBadge.warningForegroundColor;
        borderColor = context.kBadge.warningBorderColor;
        break;
      case KBadgeType.WARNING_ACTIVE:
        backgroundColor = context.kBadge.warningActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        break;
      case KBadgeType.CRITICAL:
        backgroundColor = context.kBadge.criticalBackgroundColor;
        foregroundColor = context.kBadge.criticalForegroundColor;
        borderColor = context.kBadge.criticalBorderColor;
        break;
      case KBadgeType.CRITICAL_ACTIVE:
        backgroundColor = context.kBadge.criticalActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        break;
      case KBadgeType.BUNDLE_BASIC:
        backgroundColor = context.kBadge.criticalActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        linearGradient = KGradients.BUNDLE_BASIC_GRADIENT;
        showGradient = true;
        break;
      case KBadgeType.BUNDLE_MEDIUM:
        backgroundColor = context.kBadge.criticalActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        linearGradient = KGradients.BUNDLE_MEDIUM_GRADIENT;
        showGradient = true;
        break;
      case KBadgeType.BUNDLE_TOP:
        backgroundColor = context.kBadge.criticalActiveBackgroundColor;
        foregroundColor = context.kBadge.activeForegroundDefault;
        borderColor = context.kBadge.activeBorderDefault;
        linearGradient = KGradients.BUNDLE_TOP_GRADIENT;
        showGradient = true;
        break;
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: KSpaces.spaceXS,
        vertical: KSpaces.spaceXXS,
      ),
      decoration: BoxDecoration(
        shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircular ? null : BorderRadius.circular(KRadii.radiusM),
        color: showGradient ? null : backgroundColor,
        border: Border.all(color: borderColor),
        gradient: showGradient ? linearGradient : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconPath != null)
            KIcon(
              iconPath!,
              size: KIconSizes.iconS,
              color: foregroundColor,
            ),
          if (iconPath != null && label != null) KSpaces.spaceXXS.width,
          if (label != null)
            KText(
              label!,
              style: KTextStyle.TEXT_NORMAL_BOLD,
              color: foregroundColor,
            ),
        ],
      ),
    );
  }
}

enum KBadgeType {
  LIGHT,
  LIGHT_ACTIVE,
  NEUTRAL,
  INFO,
  INFO_ACTIVE,
  SUCCESS,
  SUCCESS_ACTIVE,
  WARNING,
  WARNING_ACTIVE,
  CRITICAL,
  CRITICAL_ACTIVE,
  BUNDLE_BASIC,
  BUNDLE_MEDIUM,
  BUNDLE_TOP,
}
