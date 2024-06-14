import 'package:reactive_forms/reactive_forms.dart';

class MustBeDouble extends Validator<dynamic> {
  const MustBeDouble() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return control.value is double ? null : {'mustBeDouble': true};
  }
}
