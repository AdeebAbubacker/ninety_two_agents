import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:ninetytwoagents/widgets/quil%20form%20widgets/quil_editor.dart';
import 'package:ninetytwoagents/widgets/quil%20form%20widgets/quil_toolbar.dart';

class QuilFrom extends StatefulWidget {
  const QuilFrom({super.key});

  @override
  State<QuilFrom> createState() => _QuilFromState();
}

class _QuilFromState extends State<QuilFrom> {
  final _controller = QuillController.basic();
  final _editorFocusNode = FocusNode();
  final _editorScrollController = ScrollController();
  final _isReadOnly = false;
  int _lineCount = 0;

  @override
  void initState() {
    super.initState();
    // Initialize with an empty document
    _controller.document = Document();
    _controller.addListener(_updateLineCount);
    _updateLineCount();
  }

  @override
  void dispose() {
    _controller.removeListener(_updateLineCount);
    _controller.dispose();
    _editorFocusNode.dispose();
    _editorScrollController.dispose();
    super.dispose();
  }

  void _updateLineCount() {
    final document = _controller.document;
    final lineCount = document.toPlainText().split('\n').length;
    if (lineCount != _lineCount) {
      setState(() {
        _lineCount = lineCount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _controller.readOnly = _isReadOnly;
    return Column(
      children: [
        Container(
          height: _lineCount > 10 ? null : 400,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyQuillToolbar(
                controller: _controller,
                focusNode: _editorFocusNode,
              ),
              Builder(
                builder: (context) {
                  return MyQuillEditor(
                    controller: _controller,
                    configurations: QuillEditorConfigurations(
                      searchConfigurations: const QuillSearchConfigurations(
                        searchEmbedMode: SearchEmbedMode.plainText,
                      ),
                      sharedConfigurations: _sharedConfigurations,
                    ),
                    scrollController: _editorScrollController,
                    focusNode: _editorFocusNode,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  QuillSharedConfigurations get _sharedConfigurations {
    return const QuillSharedConfigurations(
      // locale: Locale('en'),
      extraConfigurations: {
        QuillSharedExtensionsConfigurations.key:
            QuillSharedExtensionsConfigurations(
          assetsPrefix: 'assets',
        ),
      },
    );
  }
}
