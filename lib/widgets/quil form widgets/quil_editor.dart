// ignore_for_file: directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'dart:io' as io show Directory, File;
import 'package:desktop_drop/desktop_drop.dart' show DropTarget;
import 'package:flutter_quill/extensions.dart'
    show isAndroid, isDesktop, isIOS, isWeb;
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:path/path.dart' as path;

class MyQuillEditor extends StatelessWidget {
  const MyQuillEditor({
    required this.controller,
    required this.configurations,
    required this.scrollController,
    required this.focusNode,
    super.key,
  });

  final QuillController controller;
  final QuillEditorConfigurations configurations;
  final ScrollController scrollController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context);
    return QuillEditor(
      scrollController: scrollController,
      focusNode: focusNode,
      controller: controller,
      configurations: configurations.copyWith(
        elementOptions: const QuillEditorElementOptions(
          codeBlock: QuillEditorCodeBlockElementOptions(
            enableLineNumbers: true,
          ),
          orderedList: QuillEditorOrderedListElementOptions(),
          unorderedList: QuillEditorUnOrderedListElementOptions(
            useTextColorForDot: true,
          ),
        ),
        customStyles: DefaultStyles(
          h1: DefaultTextBlockStyle(
            defaultTextStyle.style.copyWith(
              fontSize: 32,
              height: 1.15,
              fontWeight: FontWeight.w300,
            ),
            HorizontalSpacing.zero,
            const VerticalSpacing(16, 0),
            VerticalSpacing.zero,
            null,
          ),
          sizeSmall: defaultTextStyle.style.copyWith(fontSize: 9),
        ),
        scrollable: true,
        placeholder: 'Start writing your notes...',
        padding: const EdgeInsets.all(16),
        onImagePaste: (imageBytes) async {
          if (isWeb()) {
            return null;
          }
          // We will save it to system temporary files
          final newFileName =
              'imageFile-${DateTime.now().toIso8601String()}.png';
          final newPath = path.join(
            io.Directory.systemTemp.path,
            newFileName,
          );
          final file = await io.File(
            newPath,
          ).writeAsBytes(imageBytes, flush: true);
          return file.path;
        },
        onGifPaste: (gifBytes) async {
          if (isWeb()) {
            return null;
          }
          // We will save it to system temporary files
          final newFileName = 'gifFile-${DateTime.now().toIso8601String()}.gif';
          final newPath = path.join(
            io.Directory.systemTemp.path,
            newFileName,
          );
          final file = await io.File(
            newPath,
          ).writeAsBytes(gifBytes, flush: true);
          return file.path;
        },
        embedBuilders: [
          ...(isWeb()
              ? FlutterQuillEmbeds.editorWebBuilders()
              : FlutterQuillEmbeds.editorBuilders(
                  imageEmbedConfigurations: QuillEditorImageEmbedConfigurations(
                    imageErrorWidgetBuilder: (context, error, stackTrace) {
                      return Text(
                        'Error while loading an image: ${error.toString()}',
                      );
                    },
                  ),
                  videoEmbedConfigurations: QuillEditorVideoEmbedConfigurations(
                    // Loading YouTube videos on Desktop is not supported yet
                    // when using iframe platform view
                    youtubeVideoSupportMode: isDesktop(supportWeb: false)
                        ? YoutubeVideoSupportMode.customPlayerWithDownloadUrl
                        : YoutubeVideoSupportMode.iframeView,
                  ),
                )),
        ],
        builder: (context, rawEditor) {
          // The `desktop_drop` plugin doesn't support iOS platform for now
          if (isIOS(supportWeb: false)) {
            return rawEditor;
          }
          return DropTarget(
            onDragDone: (details) {
              final scaffoldMessenger = ScaffoldMessenger.of(context);
              final file = details.files.first;

              context.requireQuillController.insertImageBlock(
                imageSource: file.path,
              );
              //scaffoldMessenger.showText('Image is inserted.');
            },
            child: rawEditor,
          );
        },
      ),
    );
  }
}

