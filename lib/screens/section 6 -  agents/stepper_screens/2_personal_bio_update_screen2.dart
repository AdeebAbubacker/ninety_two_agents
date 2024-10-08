import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%201/1_4%20signup_as_buyer.dart';
import 'package:ninetytwoagents/widgets/stepper_sample.dart';

class PersonalBioUpdateScreen2 extends StatelessWidget {
  const PersonalBioUpdateScreen2({super.key});

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
                      'Industry Experience',
                      style: TextStyles.roboto14ColorBlackgrey,
                    ),
                    const SizedBox(height: 28),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Title',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Company',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Select from Date',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      textController: TextEditingController(),
                      labelText: 'Select to Date',
                      focusNode: FocusNode(),
                    ),
                    const SizedBox(height: 24),
                    TextField(
                      focusNode: FocusNode(),
                      decoration: InputDecoration(
                          focusColor: Colors.black12,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: 'Description',
                          hintStyle: TextStyles.roboto12),
                      cursorColor: Colors.black,
                      controller: TextEditingController(),
                      maxLines: 7,
                    ),
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
                    const SizedBox(height: 24),
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
