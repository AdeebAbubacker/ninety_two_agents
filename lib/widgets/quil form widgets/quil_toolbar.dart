import 'dart:io';

import 'package:image_cropper/image_cropper.dart';
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:path/path.dart' as path;
import 'dart:io' as io show Directory, File;

class MyQuillToolbar extends StatelessWidget {
  const MyQuillToolbar({
    required this.controller,
    required this.focusNode,
    super.key,
  });

  final QuillController controller;
  final FocusNode focusNode;

  Future<void> onImageInsertWithCropping(
    String image,
    QuillController controller,
    BuildContext context,
  ) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: image,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(
          title: 'Cropper',
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
        ),
        WebUiSettings(
          context: context,
        ),
      ],
    );
    final newImage = croppedFile?.path;
    if (newImage == null) {
      return;
    }

    final newSavedImage = await saveImage(io.File(newImage));
    controller.insertImageBlock(imageSource: newSavedImage);
  }

  Future<String> saveImage(io.File file) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final fileExt = path.extension(file.path);
    final newFileName = '${DateTime.now().toIso8601String()}$fileExt';
    final newPath = path.join(
      appDocDir.path,
      newFileName,
    );
    final copiedFile = await file.copy(newPath);
    return copiedFile.path;
  }

  @override
  Widget build(BuildContext context) {
    return QuillToolbar(
      configurations: const QuillToolbarConfigurations(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: [
            SizedBox(width: 40),
            QuillToolbarSelectHeaderStyleDropdownButton(
              controller: controller,
            ),
            QuillToolbarToggleStyleButton(
              options: const QuillToolbarToggleStyleButtonOptions(),
              controller: controller,
              attribute: Attribute.bold,
            ),
            QuillToolbarToggleStyleButton(
              options: const QuillToolbarToggleStyleButtonOptions(),
              controller: controller,
              attribute: Attribute.italic,
            ),
            QuillToolbarToggleStyleButton(
              controller: controller,
              attribute: Attribute.underline,
            ),
            QuillToolbarToggleStyleButton(
              controller: controller,
              attribute: Attribute.align,
            ),
            QuillToolbarToggleStyleButton(
              controller: controller,
              attribute: Attribute.leftAlignment,
            ),
            QuillToolbarToggleStyleButton(
              controller: controller,
              attribute: Attribute.rightAlignment,
            ),
          ],
        ),
      ),
    );
  }
}
