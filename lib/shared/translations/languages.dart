import 'package:cashir/shared/models/app_language.model.dart';
import 'package:cashir/shared/translations/ar.dart';
import 'package:cashir/shared/translations/en.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'ar': ar};

  static const defaultLanguageKey = "ar";
  static const availableLanguages = [
    AppLanguage(title: "English", key: "en"),
    AppLanguage(title: "العربية", key: "ar"),
  ];
}
