import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class AugTestingForm extends StatefulWidget {
  const AugTestingForm({super.key});

  @override
  State<AugTestingForm> createState() => _AugTestingFormState();
}

class _AugTestingFormState extends State<AugTestingForm> {
  final quill.QuillController _controller = quill.QuillController.basic();
  final List<double> _fontSizes = [10, 12, 14, 16, 18, 20, 24];
  double _selectedFontSize = 14;
  bool _isBold = false;
  bool _isItalic = false;
  bool _isUnderline = false;

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

  void _toggleBold() {
    setState(() {
      _isBold = !_isBold;
    });

    _controller.formatSelection(_isBold ? quill.Attribute.bold : null);
  }

  void _toggleItalic() {
    setState(() {
      _isItalic = !_isItalic;
    });

    _controller.formatSelection(_isItalic ? quill.Attribute.italic : null);
  }

  void _toggleUnderline() {
    setState(() {
      _isUnderline = !_isUnderline;
    });

    _controller
        .formatSelection(_isUnderline ? quill.Attribute.underline : null);
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
                          icon: Icon(_isBold ? Icons.format_bold : Icons.abc),
                          onPressed: _toggleBold,
                        ),
                        IconButton(
                          icon:
                              Icon(_isItalic ? Icons.format_italic : Icons.abc),
                          onPressed: _toggleItalic,
                        ),
                        IconButton(
                          icon: Icon(_isUnderline
                              ? Icons.format_underline
                              : Icons.abc),
                          onPressed: _toggleUnderline,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: quill.QuillEditor(
                          focusNode: FocusNode(),
                          controller: _controller,
                          scrollController: ScrollController(),
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
