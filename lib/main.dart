import 'package:cashir/shared/app_routes.dart';
import 'package:cashir/shared/constants/colors.dart' as app_colors;
import 'package:cashir/shared/setup_di.dart';
import 'package:cashir/shared/translations/languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void setupGet() {
  setupDI();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // setup get package
  setupGet();

  // run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // app title
      title: 'Cashir',
      // translation config
      translations: Languages(),
      locale: const Locale(Languages.defaultLanguageKey),
      fallbackLocale: const Locale(Languages.defaultLanguageKey),
      localizationsDelegates: const [
        RefreshLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      // theme config
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: app_colors.primary),
        useMaterial3: true,
      ),
      // routes config
      initialRoute: DEFAULT_ROUTE,
      getPages: appRoutes,
    );
  }
}
