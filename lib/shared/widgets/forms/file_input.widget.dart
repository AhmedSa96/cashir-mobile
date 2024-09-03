import 'dart:io';

import 'package:cashir/shared/services/http.service.dart';
import 'package:flutter/material.dart';

import 'package:cashir/shared/constants/colors.dart' as app_colors;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

class FileInput extends StatefulWidget {
  final String? formControlName;
  final FormControl? formControl;
  final String label;
  final bool isMultiple;

  const FileInput({
    required this.label,
    this.formControlName,
    this.formControl,
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
    final control = widget.formControlName != null
        ? form.control(widget.formControlName!) as FormControl
        : widget.formControl!;

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
                                      border:
                                          Border.all(color: app_colors.primary),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 50,
                                      color: app_colors.primary,
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
                              (e) => _SelectedImage(
                                control: control,
                                image: e,
                                onRemove: (imageUrl) {
                                  removeImage(
                                    control,
                                    control.value!.indexOf(e),
                                  );
                                },
                                onUpload: (url) {},
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

  pickImage(ImageSource source, BuildContext context) async {
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      if (isMultiple) {
        formControl.value ??= <File>[];

        formControl.value!.add(File(pickedFile.path));
      } else {
        formControl.value = File(pickedFile.path);
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
            onTap: () => pickImage(ImageSource.camera, context),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: app_colors.primary),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const Icon(Icons.camera_alt, color: app_colors.primary),
            ),
          ),
          InkWell(
            onTap: () => pickImage(ImageSource.gallery, context),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: app_colors.primary),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              child: const Icon(Icons.image, color: app_colors.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectedImage extends StatefulWidget {
  final FormControl control;
  final File image;
  final void Function(String) onUpload;
  final void Function(String?) onRemove;

  const _SelectedImage({
    required this.control,
    required this.image,
    required this.onUpload,
    required this.onRemove,
  });

  @override
  State<_SelectedImage> createState() => _SelectedImageState();
}

class _SelectedImageState extends State<_SelectedImage> {
  bool isUploading = false;
  String? uploadedImageUrl;

  @override
  void initState() {
    final http = Get.find<HttpService>();

    isUploading = true;
    http.postFormData(
        url: "/products/upload", body: {"image": widget.image}).then((res) {
      isUploading = false;
      uploadedImageUrl = res.data['imageUrl'];
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onLongPress: () => widget.onRemove(uploadedImageUrl),
            child: Stack(
              children: [
                ZoomOverlay(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100,
                      image: DecorationImage(
                        image: (isUploading
                            ? FileImage(widget.image)
                            : NetworkImage(uploadedImageUrl!)) as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                if (isUploading)
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.6),
                    ),
                    child: const SpinKitWaveSpinner(
                      color: app_colors.primary,
                      waveColor: app_colors.primary,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 5,
          child: InkWell(
            onTap: () => widget.onRemove(uploadedImageUrl),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.remove, color: app_colors.buttonDanger),
            ),
          ),
        ),
      ],
    );
  }
}
