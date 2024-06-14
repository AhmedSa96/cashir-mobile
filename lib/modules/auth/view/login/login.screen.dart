import 'package:cashir/modules/auth/controller/auth.controller.dart';
import 'package:cashir/modules/auth/models/login.request.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/constants/colors.dart' as colors;

class LoginScreen extends StatelessWidget {
  final form = FormGroup({
    'email': FormControl<String>(
      value: "compony1@test.dev",
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl<String>(
      value: "123",
      validators: [Validators.required],
    ),
  });

  LoginScreen({super.key});

  /// Login user
  /// this method will be called when user click on login button
  /// first check if form is valid, if not show error message
  /// if form is valid, call login method from auth controller
  /// if login failed, show error message
  /// if login success, redirect to home screen
  /// this method will change the AuthStatus in auth controller if everything is ok
  void login() async {
    final toastr = Get.find<ToastrService>();

    // check if form is valid
    if (form.invalid) {
      toastr.error("invalid credentials".tr);
      form.markAllAsTouched();
      return;
    }

    // login and get new auth status
    final body = LoginRequest.fromJson(form.value);
    final newAuthStatus = await Get.find<AuthController>().login(body: body);

    // check if login failed
    if (!newAuthStatus.isLoggedIn) {
      return;
    }

    // login success, redirect to home screen
    Get.offNamed('/compny/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.background,
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrapper(
                child: Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Wrapper(
                child: TextInput(
                  title: "Email".tr,
                  formControlName: "email",
                ),
              ),
              Wrapper(
                child: TextInput(
                  title: "Password".tr,
                  formControlName: "password",
                  isSecure: true,
                ),
              ),
              const SizedBox(height: 16),
              Wrapper(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary,
                    textStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: login,
                  child: Text(
                    "Login".tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.offNamed('/forgot-password');
                },
                child: Text("Forgot password?".tr),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Get.offNamed('/register');
                },
                child: Text("if you don't have an account, register".tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
