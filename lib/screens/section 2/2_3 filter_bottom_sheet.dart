import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';

class FilterBottomSheetScreen extends StatefulWidget {
  const FilterBottomSheetScreen({super.key});

  @override
  State<FilterBottomSheetScreen> createState() =>
      _FilterBottomSheetScreenState();
}

class _FilterBottomSheetScreenState extends State<FilterBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0XFF74C52C))),
              onPressed: () {
                _filterBottomSheet(context);
              },
              child: Text(
                "Filter",
                style: TextStyles.roboto14ColorFF,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final _posttitleController = TextEditingController();
Future _filterBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      // enableDrag: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Filter',
                  style: TextStyles.roboto20Color00,
                ),
                const SizedBox(height: 10),

                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'Data Range',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'Location',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'State',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'City',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'Zipcode',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                //------------------------------------------------------------------------
                const SizedBox(height: 24),
                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'Select Range',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                const SizedBox(height: 24),
                //-------------------------------------------------------------------------
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF74C52C))),
                    onPressed: () {},
                    child: Text(
                      "Search",
                      style: TextStyles.roboto14ColorFF,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      });
}
