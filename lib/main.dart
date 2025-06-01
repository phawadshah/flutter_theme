import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgm_admin/core/initials/bindings/initial_bindings.dart';
import 'package:sgm_admin/core/initials/controller/theme_controller.dart';
import 'package:sgm_admin/core/services/localization/localization.dart';
import 'package:sgm_admin/core/services/localization/translation.dart';
import 'package:sgm_admin/utils/routes/pages.dart';
import 'package:sgm_admin/utils/routes/routes.dart';
import 'package:sgm_admin/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitialBindings().initBindings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeController.to.themeMode,
      theme: KTheme.light,
      darkTheme: KTheme.dark,
      getPages: KPages.pages,
      initialRoute: KRoutes.initial,
      locale: AppLocales.ENGLISH,
      fallbackLocale: AppLocales.ENGLISH,
      translations: LanguageTranslations(),
      supportedLocales: Localization.supportedLocales,
      localizationsDelegates: Localization.localizationsDelegates,
    );
  }
}
