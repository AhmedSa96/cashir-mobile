import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_language.model.freezed.dart';

@freezed
class AppLanguage with _$AppLanguage {
  const factory AppLanguage({
    required String title,
    required String key,
  }) = _AppLanguage;
}
