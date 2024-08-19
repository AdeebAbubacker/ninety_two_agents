import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';
import 'package:ninetytwoagents/widgets/quil%20form%20widgets/quil_from.dart';

class PersonalBioScreen extends StatefulWidget {
  const PersonalBioScreen({super.key});

  @override
  State<PersonalBioScreen> createState() => _PersonalBioScreenState();
}

class _PersonalBioScreenState extends State<PersonalBioScreen> {
  final _posttitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: Center(
            child: Text('Personal Bio',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                )),
          ),
          actions: const [Icon(Icons.notifications_none_outlined)],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _posttitleController,
                  labelText: 'Address Line 1',
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _posttitleController,
                  labelText: 'Address Line 2',
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _posttitleController,
                  labelText: 'State',
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _posttitleController,
                  labelText: 'City',
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'ss',
                  focusNode: FocusNode(),
                  controller: _posttitleController,
                  labelText: 'Zip Code',
                ),
                const SizedBox(height: 24),
                const QuilFrom(),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF74C52C))),
                    onPressed: () {},
                    child: Text(
                      "Update",
                      style: TextStyles.roboto14ColorFF,
                    ),
                  ),
                ),
                const SizedBox(height: 124),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
