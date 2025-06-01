// ignore_for_file: unused_element, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sgm_admin/common/widgets/button.dart';
import 'package:sgm_admin/common/widgets/icon.dart';
import 'package:sgm_admin/common/widgets/text.dart';
import 'package:sgm_admin/utils/extensions/space_extension.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:sgm_admin/utils/tokens/icons.dart';
import 'package:sgm_admin/utils/tokens/radii.dart';
import 'package:sgm_admin/utils/tokens/spaces.dart';

class KAlertDialog extends StatelessWidget {
  final String? title;
  final String? description;
  final String? primaryButtonText;
  final String? secondaryButtonText;
  final void Function()? onPrimaryPressed;
  final void Function()? onSecondaryPressed;
  final KAlertType type;
  final bool hideIcon;
  const KAlertDialog({
    super.key,
    this.title,
    this.description,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
    this.type = KAlertType.INFO,
    this.hideIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;
    Color primaryColor;
    Color primaryActiveColor;
    Color textOnPrimary;
    Color secondaryColor;
    Color secondaryActiveColor;
    Color textOnSecondary;

    switch (type) {
      case KAlertType.INFO:
        backgroundColor = context.kAlert.backgroundDefault;
        borderColor = context.kAlert.borderDefault; //
        primaryColor = context.kAlert.backgroundInfoPrimary;
        primaryActiveColor = context.kAlert.activeInfoPrimary;
        textOnPrimary = context.kAlert.textOnInfoPrimary;
        secondaryColor = context.kAlert.backgroundDefaultSecondary;
        secondaryActiveColor = context.kAlert.activeDefaultSecondary;
        textOnSecondary = context.kAlert.textOnDefaultSecondary;
        break;
      case KAlertType.INFO_ACTIVE:
        backgroundColor = context.kAlert.backgroundInfo;
        borderColor = context.kAlert.infoBorder; //
        primaryColor = context.kAlert.backgroundInfoPrimary;
        primaryActiveColor = context.kAlert.activeInfoPrimary;
        textOnPrimary = context.kAlert.textOnInfoPrimary;
        secondaryColor = context.kAlert.backgroundInfoSecondary;
        secondaryActiveColor = context.kAlert.activeInfoSecondary;
        textOnSecondary = context.kAlert.textOnInfoSecondary;
        break;
      case KAlertType.SUCCESS:
        backgroundColor = context.kAlert.backgroundDefault;
        borderColor = context.kAlert.borderDefault; //
        primaryColor = context.kAlert.backgroundSuccessPrimary;
        primaryActiveColor = context.kAlert.activeSuccessPrimary;
        textOnPrimary = context.kAlert.textOnSuccessPrimary;
        secondaryColor = context.kAlert.backgroundDefaultSecondary;
        secondaryActiveColor = context.kAlert.activeDefaultSecondary;
        textOnSecondary = context.kAlert.textOnDefaultSecondary;
        break;
      case KAlertType.SUCCESS_ACTIVE:
        backgroundColor = context.kAlert.backgroundSuccess;
        borderColor = context.kAlert.successBorder; //
        primaryColor = context.kAlert.backgroundSuccessPrimary;
        primaryActiveColor = context.kAlert.activeSuccessPrimary;
        textOnPrimary = context.kAlert.textOnSuccessPrimary;
        secondaryColor = context.kAlert.backgroundSuccessSecondary;
        secondaryActiveColor = context.kAlert.activeSuccessSecondary;
        textOnSecondary = context.kAlert.textOnSuccessSecondary;
        break;
      case KAlertType.WARNING:
        backgroundColor = context.kAlert.backgroundDefault;
        borderColor = context.kAlert.borderDefault; //
        primaryColor = context.kAlert.backgroundWarningPrimary;
        primaryActiveColor = context.kAlert.activeWarningPrimary;
        textOnPrimary = context.kAlert.textOnWarningPrimary;
        secondaryColor = context.kAlert.backgroundDefaultSecondary;
        secondaryActiveColor = context.kAlert.activeDefaultSecondary;
        textOnSecondary = context.kAlert.textOnDefaultSecondary;
        break;
      case KAlertType.WARNING_ACTIVE:
        backgroundColor = context.kAlert.backgroundWarning;
        borderColor = context.kAlert.warningBorder; //
        primaryColor = context.kAlert.backgroundWarningPrimary;
        primaryActiveColor = context.kAlert.activeWarningPrimary;
        textOnPrimary = context.kAlert.textOnWarningPrimary;
        secondaryColor = context.kAlert.backgroundWarningSecondary;
        secondaryActiveColor = context.kAlert.activeWarningSecondary;
        textOnSecondary = context.kAlert.textOnWarningSecondary;
        break;
      case KAlertType.CRITICAL:
        backgroundColor = context.kAlert.backgroundDefault;
        borderColor = context.kAlert.borderDefault; //
        primaryColor = context.kAlert.backgroundCriticalPrimary;
        primaryActiveColor = context.kAlert.activeCriticalPrimary;
        textOnPrimary = context.kAlert.textOnCriticalPrimary;
        secondaryColor = context.kAlert.backgroundDefaultSecondary;
        secondaryActiveColor = context.kAlert.activeDefaultSecondary;
        textOnSecondary = context.kAlert.textOnDefaultSecondary;
        break;
      case KAlertType.CRITICAL_ACTIVE:
        backgroundColor = context.kAlert.backgroundCritical;
        borderColor = context.kAlert.criticalBorder; //
        primaryColor = context.kAlert.backgroundCriticalPrimary;
        primaryActiveColor = context.kAlert.activeCriticalPrimary;
        textOnPrimary = context.kAlert.textOnCriticalPrimary;
        secondaryColor = context.kAlert.backgroundCriticalSecondary;
        secondaryActiveColor = context.kAlert.activeCriticalSecondary;
        textOnSecondary = context.kAlert.textOnCriticalSecondary;
        break;
    }

    return Container(
      padding: const EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(KRadii.radiusXS),
      ),
      child: Container(
        padding: description == null
            ? const EdgeInsets.symmetric(
                horizontal: KPaddings.sideDefault,
                vertical: KPaddings.sideDefault / 2)
            : const EdgeInsets.all(KPaddings.sideDefault),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(KRadii.radiusXS),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (description != null && !hideIcon) ...[
              KIcon(
                type.iconPath,
                color: primaryColor,
              ),
              KSpaces.spaceXS.width,
            ],
            description == null
                ? Expanded(
                    child: Row(
                      children: [
                        if (!hideIcon) ...[
                          KIcon(
                            type.iconPath,
                            color: primaryColor,
                          ),
                          KSpaces.spaceXS.width,
                        ],
                        if (title != null)
                          Expanded(
                            flex: 2,
                            child: KText(
                              title!,
                              style: KTextStyle.HEADING_TITLE_4,
                            ),
                          ),

                        Expanded(
                          flex: 1,
                          child: KButton(
                            onPressed: onPrimaryPressed,
                            label: primaryButtonText,
                            backgroundColor: primaryColor,
                            splashColor: primaryActiveColor,
                            foregroundColor: textOnPrimary,
                          ),
                        ),
                        // ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (title != null) ...[
                          KText(
                            title!,
                            style: KTextStyle.HEADING_TITLE_4,
                          ),
                          KSpaces.spaceXXS.height,
                        ],
                        KText(
                          description!,
                          style: KTextStyle.TEXT_NORMAL_REGULAR,
                        ),
                        KSpaces.spaceM.height,
                        Row(
                          children: [
                            if (primaryButtonText != null)
                              Expanded(
                                child: KButton(
                                  onPressed: onPrimaryPressed,
                                  label: primaryButtonText,
                                  backgroundColor: primaryColor,
                                  foregroundColor: textOnPrimary,
                                  splashColor: primaryActiveColor,
                                ),
                              ),
                            KSpaces.spaceS.width,
                            if (secondaryButtonText != null)
                              Expanded(
                                child: KButton(
                                  onPressed: onSecondaryPressed,
                                  label: secondaryButtonText,
                                  backgroundColor: secondaryColor,
                                  foregroundColor: textOnSecondary,
                                  splashColor: secondaryActiveColor,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

enum KAlertType {
  INFO,
  INFO_ACTIVE,
  SUCCESS,
  SUCCESS_ACTIVE,
  WARNING,
  WARNING_ACTIVE,
  CRITICAL,
  CRITICAL_ACTIVE,
}

const String alertDescription = "The main description message of this Alert "
    "component should be placed here. If you need "
    "to use TextLink in this component, please do "
    "it by using Normal Underline text style. \n\n"
    "Description message can be formatted, but if more customization is needed "
    "a custom description content can be provided instead.";

extension KAlertTypeExtension on KAlertType {
  String get iconPath =>
      this == KAlertType.INFO || this == KAlertType.INFO_ACTIVE
          ? KIcons.informationCircle
          : this == KAlertType.SUCCESS || this == KAlertType.SUCCESS_ACTIVE
              ? KIcons.checkCircle
              : this == KAlertType.WARNING || this == KAlertType.WARNING_ACTIVE
                  ? KIcons.alertCircle
                  : KIcons.alertOctagon;
}
