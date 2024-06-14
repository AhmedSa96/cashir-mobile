import 'package:cashir/modules/auth/models/register.request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../shared/services/toastr.service.dart';
import '../../../../shared/widgets/common/wrapper.widget.dart';
import '../../../../shared/widgets/forms/date_input.widget.dart';
import '../../../../shared/widgets/forms/text_input.widget.dart';
import '../../controller/auth.controller.dart';
import 'package:cashir/shared/constants/colors.dart' as colors;

class RegisterScreen extends StatelessWidget {
  final form = FormGroup({
    'name': FormControl<String>(
      validators: [Validators.required],
    ),
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl<String>(
      validators: [Validators.required],
    ),
    'confirmPassword': FormControl<String>(
      validators: [Validators.required],
    ),
    'phone': FormControl<String>(
      validators: [],
    ),
    'birthDate': FormControl<DateTime>(
      validators: [],
    ),
  }, validators: [
    Validators.mustMatch('password', 'confirmPassword'),
  ]);

  RegisterScreen({super.key});

  // register new user
  /// this method will be called when user click on register button
  /// first check if form is valid, if not show error message
  /// if form is valid, call register method from auth controller
  /// if register failed, show error message
  /// if register success, redirect to dashboard screen
  /// this method will change the AuthStatus in auth controller if everything is ok
  void register() async {
    final toastr = Get.find<ToastrService>();

    // check if form is valid
    if (form.invalid) {
      toastr.error("invalid credentials".tr);
      form.markAllAsTouched();
      return;
    }

    // register and check if register is done successfully
    final body = RegisterRequest.fromJson(form.value);
    final isSuccess = await Get.find<AuthController>().register(body: body);

    // check if register failed
    if (!isSuccess) {
      return;
    }

    // register success, redirect to login screen
    Get.offNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.background,
        child: ReactiveForm(
          formGroup: form,
          child: ListView(
            children: [
              Column(
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
                      title: "Full Name".tr,
                      formControlName: "name",
                    ),
                  ),
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
                  Wrapper(
                    child: TextInput(
                      title: "Confirm Password".tr,
                      formControlName: "confirmPassword",
                      isSecure: true,
                    ),
                  ),
                  Wrapper(
                    child: TextInput(
                      title: "Phone".tr,
                      formControlName: "phone",
                    ),
                  ),
                  Wrapper(
                    child: DateInput(
                      title: "Birth Date".tr,
                      formControlName: "birthDate",
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
                      onPressed: register,
                      child: Text(
                        "Sign Up".tr,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed('/login');
                    },
                    child: Text("if you already have an account, login".tr),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
