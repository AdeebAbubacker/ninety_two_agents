// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class QuilForm extends StatefulWidget {
  const QuilForm({super.key});

  @override
  State<QuilForm> createState() => _QuilFormState();
}

class _QuilFormState extends State<QuilForm> {
  final quill.QuillController _controller = quill.QuillController.basic();
  final List<double> _fontSizes = [10, 12, 14, 16, 18, 20, 24];
  double _selectedFontSize = 14;

  void _setFontSize(double? size) {
    setState(() {
      _selectedFontSize = size ?? 12;
    });

    _controller.formatText(
      _controller.selection.start,
      _controller.selection.end - _controller.selection.start,
      quill.Attribute.size,
    );
  }

  Map<String, dynamic> _getInitialContent() {
    if (_controller.document.toString().isEmpty) {
      return {
        "ops": [
          {"insert": "haai\n"}
        ]
      };
    }
    return {"ops": []};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.3,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Wrap(
                      children: [
                        DropdownButton<double>(
                          value: _selectedFontSize,
                          items: _fontSizes.map((size) {
                            return DropdownMenuItem<double>(
                              value: size,
                              child: Text('$size'),
                            );
                          }).toList(),
                          onChanged: _setFontSize,
                        ),
                        IconButton(
                          icon: const Icon(Icons.format_bold),
                          onPressed: () {
                            _controller.formatSelection(quill.Attribute.bold);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.format_italic),
                          onPressed: () {
                            _controller.formatSelection(quill.Attribute.h1);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.format_underlined),
                          onPressed: () {
                            _controller
                                .formatSelection(quill.Attribute.underline);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.format_align_left),
                          onPressed: () {
                            _controller
                                .formatSelection(quill.Attribute.leftAlignment);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.format_align_center),
                          onPressed: () {
                            _controller.formatSelection(
                                quill.Attribute.centerAlignment);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.format_align_right),
                          onPressed: () {
                            _controller.formatSelection(
                                quill.Attribute.rightAlignment);
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.4,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        child: quill.QuillEditor(
                          controller: _controller,
                          // readOnly: false,
                          // autoFocus: true,
                          // expands: true,
                          // padding: EdgeInsets.all(8),
                          // scrollable: true,
                          scrollController: ScrollController(),
                          focusNode: FocusNode(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
