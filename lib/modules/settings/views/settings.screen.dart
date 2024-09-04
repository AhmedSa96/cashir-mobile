import 'package:cashir/modules/settings/controllers/chnage_password.controller.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/models/app_language.model.dart';
import 'package:cashir/shared/translations/languages.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as app_colors;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Settings".tr,
      child: ListView(
        children: [
          const SizedBox(height: 24),
          _HeaderTitle(title: "Change Password".tr),
          const _ChangePasswordForm(),
          const Wrapper(child: Divider()),
          _HeaderTitle(title: "Select Language".tr),
          const _LanguagePicker()
        ],
      ),
    );
  }
}

class _HeaderTitle extends StatelessWidget {
  final String title;

  const _HeaderTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: app_colors.primary,
        ),
      ),
    );
  }
}

class _ChangePasswordForm extends StatefulWidget {
  const _ChangePasswordForm();

  @override
  State<_ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<_ChangePasswordForm> {
  final changePasswordForm = FormGroup(
    {
      "oldPassword": FormControl(validators: [Validators.required]),
      "newPassword": FormControl(validators: [Validators.required]),
      "confirmPassword": FormControl(validators: [Validators.required]),
    },
    validators: [
      Validators.mustMatch("newPassword", "confirmPassword"),
    ],
  );

  void save() {
    if (changePasswordForm.invalid) {
      changePasswordForm.markAllAsTouched();
      return;
    }

    Get.find<ChangePasswordController>()
        .execute(body: changePasswordForm.value);
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: changePasswordForm,
      child: Column(
        children: [
          Wrapper(
            child: TextInput(
              title: "old password".tr,
              formControlName: "oldPassword",
              isSecure: true,
            ),
          ),
          Wrapper(
            child: TextInput(
              title: "new password".tr,
              formControlName: "newPassword",
              isSecure: true,
            ),
          ),
          Wrapper(
            child: TextInput(
              title: "confirm new password".tr,
              formControlName: "confirmPassword",
              isSecure: true,
            ),
          ),
          Wrapper(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: save,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(() {
                      final controller = Get.find<ChangePasswordController>();
                      return controller.isLoading.isTrue
                          ? Container(
                              margin: const EdgeInsets.all(8.0),
                              child: const CircularProgressIndicator(),
                            )
                          : Container();
                    }),
                    const SizedBox(width: 16),
                    Text("Save".tr),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LanguagePicker extends StatelessWidget {
  const _LanguagePicker();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Wrapper(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: Languages.availableLanguages
              .map((e) => _LanguagePickerItem(appLanguage: e))
              .toList(),
        ),
      ),
    );
  }
}

class _LanguagePickerItem extends StatelessWidget {
  final AppLanguage appLanguage;

  const _LanguagePickerItem({required this.appLanguage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.updateLocale(Locale(appLanguage.key));
      },
      child: Container(
        width: 180,
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // color: app_colors.background,
          borderRadius: BorderRadius.circular(16),
          border: appLanguage.key == Get.locale?.languageCode
              ? Border.all(color: app_colors.primary, width: 3)
              : Border.all(color: app_colors.primary, width: 1),
        ),
        child: Text(
          appLanguage.title,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
