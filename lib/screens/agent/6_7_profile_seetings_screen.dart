// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/common/6_agent_details_screen.dart';
import 'package:ninetytwoagents/screens/common/8_security_settings_screen.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';
import 'package:ninetytwoagents/widgets/profile_circle.dart';

class AgentsProfileSettingsScreen extends StatelessWidget {
  const AgentsProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final unfocusedFocusNode = FocusNode(); // Unused FocusNode

    void unfocusAll() {
      FocusScope.of(context).requestFocus(unfocusedFocusNode);
    }

    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Text('Profile Settings', style: TextStyles.roboto20Color00),
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
      body: GestureDetector(
        onTap: () {
          unfocusAll();
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const AgentdetailsScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const SecuritySettingsScreen()),
            );
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const ProfileCircle(),
                  const SizedBox(height: 36),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Email',
                    hintText: 'Email',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Full Name',
                    hintText: 'Full Name',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Address Line 1',
                    hintText: 'Address Line 1',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Address Line 2',
                    hintText: 'Address Line 2',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'State',
                    hintText: 'State',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'City',
                    hintText: 'City',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Phone (Cell)',
                    hintText: 'Phone (Cell)',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Phone (Home)',
                    hintText: 'Phone (Home)',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Phone (Work)',
                    hintText: 'Phone (Work)',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Fax',
                    hintText: 'Fax',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    labelText: 'Zip Code',
                    hintText: 'Zip Code',
                    focusNode: FocusNode(),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text("Edit"))),
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
