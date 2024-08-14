import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/common/4_signup_as_buyer.dart';
import 'package:ninetytwoagents/testing/stepper_sample.dart';

class PersonalBioUpdateScreen4 extends StatelessWidget {
  const PersonalBioUpdateScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ),
        title: Text(
          'Personal Biodata Update',
          style: TextStyles.roboto20Color00,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomStepper(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Language Proficiency',
                      style: TextStyles.roboto14ColorBlackgrey,
                    ),
                    const SizedBox(height: 28),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Language',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Speak',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Read',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Write',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0XFF74C52C))),
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyles.roboto14ColorFF,
                        ),
                      ),
                    ),
                    const SizedBox(height: 44),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
