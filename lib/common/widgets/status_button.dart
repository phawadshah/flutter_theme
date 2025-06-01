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

class KStatusButton extends StatelessWidget {
  final String? label;
  final String? iconPath;
  final String? trailingPath;
  final KStatusButtonStyle style;
  final bool fullWidth;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? splashColor;

  final void Function()? onPressed;

  const KStatusButton({
    super.key,
    this.label,
    this.iconPath,
    this.trailingPath,
    this.style = KStatusButtonStyle.INFO_ACTIVE,
    this.fullWidth = false,
    this.backgroundColor,
    this.foregroundColor,
    this.splashColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color background;
    Color foreground;
    Color tapColor;

    switch (style) {
      case KStatusButtonStyle.INFO_ACTIVE:
        background = context.kStatusButtonTheme.infoActiveBackgroundColor;
        foreground = context.kStatusButtonTheme.activeForegroundDefault;
        tapColor = context.kStatusButtonTheme.infoActiveSplashColor;
        break;
      case KStatusButtonStyle.INFO:
        background = context.kStatusButtonTheme.infoBackgroundColor;
        foreground = context.kStatusButtonTheme.infoForegroundColor;
        tapColor = context.kStatusButtonTheme.infoSplashColor;
        break;
      case KStatusButtonStyle.SUCCESS_ACTIVE:
        background = context.kStatusButtonTheme.successActiveBackgroundColor;
        foreground = context.kStatusButtonTheme.activeForegroundDefault;
        tapColor = context.kStatusButtonTheme.successActiveSplashColor;
        break;
      case KStatusButtonStyle.SUCCESS:
        background = context.kStatusButtonTheme.successBackgroundColor;
        foreground = context.kStatusButtonTheme.successForegroundColor;
        tapColor = context.kStatusButtonTheme.successSplashColor;
        break;
      case KStatusButtonStyle.WARNING_ACTIVE:
        background = context.kStatusButtonTheme.warningActiveBackgroundColor;
        foreground = context.kStatusButtonTheme.activeForegroundDefault;
        tapColor = context.kStatusButtonTheme.warningActiveSplashColor;
        break;
      case KStatusButtonStyle.WARNING:
        background = context.kStatusButtonTheme.warningBackgroundColor;
        foreground = context.kStatusButtonTheme.warningForegroundColor;
        tapColor = context.kStatusButtonTheme.warningSplashColor;
        break;
      case KStatusButtonStyle.CRITICAL_ACTIVE:
        background = context.kStatusButtonTheme.criticalActiveBackgroundColor;
        foreground = context.kStatusButtonTheme.activeForegroundDefault;
        tapColor = context.kStatusButtonTheme.criticalActiveSplashColor;
        break;
      case KStatusButtonStyle.CRITICAL:
        background = context.kStatusButtonTheme.criticalBackgroundColor;
        foreground = context.kStatusButtonTheme.criticalForegroundColor;
        tapColor = context.kStatusButtonTheme.criticalSplashColor;
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: trailingPath != null
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          if (iconPath != null)
            KIcon(
              iconPath!,
              onPressed: null,
              color: foreground,
              size: KIconSizes.iconXS,
            ),
          if (iconPath != null && label != null) KSpaces.spaceXS.width,
          if (label != null) Text(label!),
          if (trailingPath != null) ...[
            // const Spacer(),
            KSpaces.spaceXS.width,
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

    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: button,
    );
  }
}

enum KStatusButtonStyle {
  INFO_ACTIVE,
  INFO,

  SUCCESS_ACTIVE,
  SUCCESS,

  WARNING_ACTIVE,
  WARNING,

  CRITICAL_ACTIVE,
  CRITICAL,
}
