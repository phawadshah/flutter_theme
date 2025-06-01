import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/modules/alert/alert_bindings.dart';
import 'package:sgm_admin/modules/alert/alert_page.dart';
import 'package:sgm_admin/modules/badge/badge_bindings.dart';
import 'package:sgm_admin/modules/badge/badge_page.dart';
import 'package:sgm_admin/modules/buttons/buttons_bindings.dart';
import 'package:sgm_admin/modules/buttons/buttons_page.dart';
import 'package:sgm_admin/modules/colors/colors_bindings.dart';
import 'package:sgm_admin/modules/colors/colors_page.dart';
import 'package:sgm_admin/modules/1.home/home_bindings.dart';
import 'package:sgm_admin/modules/1.home/home_page.dart';
import 'package:sgm_admin/modules/icons/icons_bindings.dart';
import 'package:sgm_admin/modules/icons/icons_page.dart';
import 'package:sgm_admin/modules/illustrations/illustrations_bindings.dart';
import 'package:sgm_admin/modules/illustrations/illustrations_page.dart';
import 'package:sgm_admin/modules/typography/typography_bindings.dart';
import 'package:sgm_admin/modules/typography/typography_page.dart';
import 'package:sgm_admin/pages/buttons_page.dart';
import 'package:sgm_admin/utils/routes/routes.dart';

class KPages {
  static const String home = '/home';

  static List<GetPage<dynamic>>? pages = [
    _getPage(
      KRoutes.home,
      const HomePage(
        key: Key('Home'),
      ),
      HomeBindings(),
    ),
    _getPage(
      KRoutes.colors,
      const ColorsPage(
        key: Key('Colors'),
      ),
      ColorsBindings(),
    ),
    _getPage(
      KRoutes.icons,
      const IconsPage(
        key: Key('Icons'),
      ),
      IconsBindings(),
    ),
    _getPage(
      KRoutes.illustrations,
      const IllustrationsPage(
        key: Key('Illustrations'),
      ),
      IllustrationsBindings(),
    ),
    _getPage(
      KRoutes.typography,
      const TypographyPage(
        key: Key('Typography'),
      ),
      TypographyBindings(),
    ),
    _getPage(
      KRoutes.alert,
      const AlertPage(
        key: Key('Alert'),
      ),
      AlertBindings(),
    ),
    _getPage(
      KRoutes.badge,
      const BadgePage(
        key: Key('Badge'),
      ),
      BadgeBindings(),
    ),
    _getPage(
      KRoutes.buttons,
      const ButtonsPage(
        key: Key('Buttons'),
      ),
      ButtonsBindings(),
    )
  ];

  static _getPage(
    String routeName,
    Widget page,
    Bindings? binding,
  ) {
    return GetPage(
      name: routeName,
      page: () => page,
      binding: binding,
    );
  }
}
