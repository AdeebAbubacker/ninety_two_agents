import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/common/4_signup_as_buyer.dart';
import 'package:ninetytwoagents/testing/stepper_sample.dart';

class PersonalBioUpdateScreen3 extends StatelessWidget {
  const PersonalBioUpdateScreen3({super.key});

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
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomStepper(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sales History',
                      style: TextStyles.roboto14ColorBlackgrey,
                    ),
                    SizedBox(height: 28),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Years',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Sellers Represented',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Buyers Represented',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Total Dollar Sales',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Assosiations and Awards',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Publications',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Community Involvement',
                      focusNode: FocusNode(),
                    ),
                    SizedBox(height: 24),
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
                    SizedBox(height: 44),
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
