// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%202/2_1_agents_post_listing_screen.dart';
import 'package:ninetytwoagents/screens/section%201/8_security_settings_screen.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _detailsController = TextEditingController();
  final _postController = TextEditingController();
  final _notesController = TextEditingController();
  final detailsFocusNode = FocusNode();
  final postsFocusNode = FocusNode();
  final notesFocusNode = FocusNode();
  final _unfocusedFocusNode = FocusNode();

  @override
  void dispose() {
    _detailsController.dispose();
    _postController.dispose();
    _notesController.dispose();
    detailsFocusNode.dispose();
    postsFocusNode.dispose();
    notesFocusNode.dispose();
    _unfocusedFocusNode.dispose();
    super.dispose();
  }

  void _unfocusAll() {
    FocusScope.of(context).requestFocus(_unfocusedFocusNode);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _unfocusAll();
      },
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          // Swiped Right
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const  SecuritySettingsScreen()),
          );
        } else if (details.primaryVelocity! < 0) {
          // Swiped Left
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const  AgentsPostListingScreen()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFFFFF),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: Text(
            'Change Password',
            style: TextStyles.roboto20Color00,
          ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon: const Icon(Icons.notifications_none_rounded),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      controller: TextEditingController(),
                      labelText: 'Old Password',
                      hintText: 'Input',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      controller: TextEditingController(),
                      labelText: 'New Password',
                      hintText: 'Input',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      controller: TextEditingController(),
                      labelText: 'Confirm New Password',
                      hintText: 'Input',
                      focusNode: FocusNode(),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0XFF74C52C))),
                          onPressed: () {},
                          child: Text(
                            "Update",
                            style: TextStyles.roboto14ColorFF,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
