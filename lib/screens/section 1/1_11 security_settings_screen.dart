// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%201/1_10%20profile_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_13%20change_password_screen.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _unfocusedFocusNode = FocusNode(); // Unused FocusNode

    void _unfocusAll() {
      FocusScope.of(context).requestFocus(_unfocusedFocusNode);
    }

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
                builder: (context) => const ProfileSettingsScreen()),
          );
        } else if (details.primaryVelocity! < 0) {
          // Swiped Left
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const  ChangePasswordScreen()),
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
          title: Text('Security Settings', style: TextStyles.roboto20Color00),
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
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Select Question',
                    hintText: 'What is your Nick Name?',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Enter Answer',
                    hintText: 'Vicky',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Select Question',
                    hintText: 'What is your place of birth?',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Enter Answer',
                    hintText: 'Chennai',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 34),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
