import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';
import 'package:ninetytwoagents/widgets/quil%20form%20widgets/quil_from.dart';

class CreateBlogScreen extends StatefulWidget {
  const CreateBlogScreen({super.key});

  @override
  State<CreateBlogScreen> createState() => _CreateBlogScreenState();
}

class _CreateBlogScreenState extends State<CreateBlogScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: Text('Add Blog',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              )),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _titleController,
                  labelText: 'Title',
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _titleController,
                  labelText: 'Select Category',
                ),
                const SizedBox(height: 24),
                const QuilFrom(),
                const SizedBox(height: 23),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF74C52C))),
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyles.roboto14ColorFF,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
