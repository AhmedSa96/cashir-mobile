import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:cashir/shared/constants/colors.dart' as colors;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

class FileInput extends StatefulWidget {
  final String formControlName;
  final String label;
  final bool isMultiple;

  const FileInput({
    required this.label,
    required this.formControlName,
    this.isMultiple = false,
    super.key,
  });

  @override
  State<FileInput> createState() => _FileInputState();
}

class _FileInputState extends State<FileInput> {
  pickImage(FormControl control) {
    // show bottom sheet to choose image
    Get.bottomSheet(FilePickerBottomSheet(
      formControl: control,
      isMultiple: widget.isMultiple,
    )).then((value) => setState(() {}));
  }

  removeImage(FormControl control, int index) {
    control.value!.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context) as FormGroup;
    final control = form.control(widget.formControlName) as FormControl;

    // get screen width
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.label),
            const SizedBox(height: 10),
            StreamBuilder(
                stream: control.valueChanges,
                builder: (context, snapshot) {
                  return SizedBox(
                    height: 100,
                    width: width - 32,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          if ((control.value?.isEmpty ?? true) ||
                              widget.isMultiple)
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () => pickImage(control),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: colors.primary),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 50,
                                      color: colors.primary,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            )
                          else if (control.value != null &&
                              control.value!.isNotEmpty &&
                              !widget.isMultiple)
                            InkWell(
                              onTap: () => pickImage(control),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade100,
                                  image: DecorationImage(
                                    image: MemoryImage(control.value!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                          // show images if isMultiple
                          if (widget.isMultiple && control.value != null)
                            ...control.value!.map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: InkWell(
                                  onLongPress: () => removeImage(
                                    control,
                                    control.value!.indexOf(e),
                                  ),
                                  child: ZoomOverlay(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade100,
                                        image: DecorationImage(
                                          image: MemoryImage(e),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ],
    );
  }
}

class FilePickerBottomSheet extends StatelessWidget {
  final FormControl formControl;
  final bool isMultiple;

  const FilePickerBottomSheet(
      {required this.formControl, required this.isMultiple, super.key});

  pickImage(ImageSource source) async {
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      if (isMultiple) {
        formControl.value ??= <Uint8List>[];

        formControl.value!.add(await pickedFile.readAsBytes());
      } else {
        formControl.value = await pickedFile.readAsBytes();
      }
      formControl.markAsTouched();
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => pickImage(ImageSource.camera),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: colors.primary),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const Icon(Icons.camera_alt, color: colors.primary),
            ),
          ),
          InkWell(
            onTap: () => pickImage(ImageSource.gallery),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: colors.primary),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const Icon(Icons.image, color: colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
