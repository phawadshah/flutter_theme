// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sgm_admin/common/styles/gradients.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/colors.dart';
import 'package:sgm_admin/utils/tokens/icon_sizes.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class KButton extends StatelessWidget {
  final String? label;
  final String? iconPath;
  final String? trailingPath;
  final KButtonStyle style;
  final bool fullWidth;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? splashColor;

  final void Function()? onPressed;

  const KButton({
    super.key,
    this.label,
    this.iconPath,
    this.trailingPath,
    this.style = KButtonStyle.PRIMARY,
    this.fullWidth = true,
    this.backgroundColor,
    this.foregroundColor,
    this.splashColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool hasGradiend = style == KButtonStyle.BUNDLE_BASIC ||
        style == KButtonStyle.BUNDLE_MEDIUM ||
        style == KButtonStyle.BUNDLE_TOP;

    LinearGradient? gradient;
    Color background;
    Color foreground;
    Color tapColor;

    switch (style) {
      case KButtonStyle.PRIMARY:
        gradient = null;
        background = backgroundColor ?? context.kButtons.backgroundPrimary;
        foreground = foregroundColor ?? context.kButtons.textOnPrimary;
        tapColor = splashColor ?? context.kButtons.activePrimary;
        break;
      case KButtonStyle.PRIMARY_SUBTLE:
        gradient = null;
        background =
            backgroundColor ?? context.kButtons.backgroundPrimarySubtle;
        foreground = foregroundColor ?? context.kButtons.textOnPrimarySubtle;
        tapColor = splashColor ?? context.kButtons.activePrimarySubtle;
        break;
      case KButtonStyle.SECONDARY:
        gradient = null;
        background = backgroundColor ?? context.kButtons.backgroundSecondary;
        foreground = foregroundColor ?? context.kButtons.textOnSecondary;
        tapColor = splashColor ?? context.kButtons.activeSecondary;
        break;
      case KButtonStyle.CRITICAL:
        gradient = null;
        background = backgroundColor ?? context.kButtons.backgroundCritical;
        foreground = foregroundColor ?? context.kButtons.textOnCritical;
        tapColor = splashColor ?? context.kButtons.activeCritical;
        break;
      case KButtonStyle.CRITICAL_SUBTLE:
        gradient = null;
        background =
            backgroundColor ?? context.kButtons.backgroundCriticalSubtle;
        foreground = foregroundColor ?? context.kButtons.textOnCriticalSubtle;
        tapColor = splashColor ?? context.kButtons.activeCriticalSubtle;
        break;
      case KButtonStyle.BUNDLE_BASIC:
        gradient = KGradients.BUNDLE_BASIC_GRADIENT;
        background = Colors.transparent;
        foreground = foregroundColor ?? context.kButtons.textOnPrimary;
        tapColor = KColors.BUNDLE_BASIC;
        break;
      case KButtonStyle.BUNDLE_MEDIUM:
        gradient = KGradients.BUNDLE_MEDIUM_GRADIENT;
        background = Colors.transparent;
        foreground = foregroundColor ?? context.kButtons.textOnPrimary;
        tapColor = KColors.BUNDLE_MEDIUM;
        break;
      case KButtonStyle.BUNDLE_TOP:
        gradient = KGradients.BUNDLE_TOP_GRADIENT;
        background = Colors.transparent;
        foreground = foregroundColor ?? context.kButtons.textOnPrimary;
        tapColor = KColors.BUNDLE_TOP_END;
        break;
    }

    Widget button = ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(0),
        padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
          horizontal: KPaddings.buttonInsidePadding,
        )),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KRadii.buttonRadius))),
        backgroundColor: WidgetStatePropertyAll(background),
        foregroundColor: WidgetStatePropertyAll(foreground),
        textStyle: WidgetStatePropertyAll(
            context.kTexts.HEADING_TITLE_5.copyWith(height: 0)),
        iconSize: const WidgetStatePropertyAll(KIconSizes.iconXS),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return tapColor;
            }
            if (states.contains(WidgetState.pressed)) {
              return tapColor;
            }
            return null;
          },
        ),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: trailingPath != null
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          if (iconPath != null) ...[
            KIcon(
              iconPath!,
              onPressed: null,
              color: foreground,
              size: KIconSizes.iconXS,
            ),
            KSpaces.spaceXS.width
          ],
          if (label != null) Text(label!),
          if (trailingPath != null) ...[
            const Spacer(),
            KIcon(
              trailingPath!,
              onPressed: null,
              color: foreground,
              size: KIconSizes.iconXS,
            ),
          ],
        ],
      ),
    );

    if (hasGradiend) {
      return Container(
        width: fullWidth ? double.infinity : null,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(KRadii.buttonRadius),
          gradient: gradient,
        ),
        clipBehavior: Clip.none,
        child: button,
      );
    } else {
      return SizedBox(
        width: fullWidth ? double.infinity : null,
        height: 40,
        child: button,
      );
    }
  }
}

enum KButtonStyle {
  PRIMARY,
  PRIMARY_SUBTLE,
  SECONDARY,
  CRITICAL,
  CRITICAL_SUBTLE,
  BUNDLE_BASIC,
  BUNDLE_MEDIUM,
  BUNDLE_TOP,
}
