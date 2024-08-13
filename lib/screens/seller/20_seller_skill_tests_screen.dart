// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';

class SellerSkillTestsScreen extends StatefulWidget {
  const SellerSkillTestsScreen({super.key});

  @override
  State<SellerSkillTestsScreen> createState() => _SellerSkillTestsScreenState();
}

class _SellerSkillTestsScreenState extends State<SellerSkillTestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Text(
          'Skill Tests',
          style: TextStyles.roboto20Color00,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Text(
                  '1. Question Placeholder',
                  style: TextStyles.roboto16,
                ),
                const SizedBox(height: 12),
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
                      hintText: 'Input',
                      hintStyle: TextStyles.roboto12),
                  cursorColor: Colors.black,
                  controller: TextEditingController(),
                  maxLines: 7,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        side: WidgetStateProperty.all(const BorderSide(
                            color: Color.fromARGB(255, 210, 209, 209),
                            width: 1.0)),
                      ),
                      child: Text(
                        'Save',
                        style: TextStyles.roboto14Color20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '2. Question Placeholder',
                  style: TextStyles.roboto16,
                ),
                const SizedBox(height: 12),
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
                      hintText: 'Input',
                      hintStyle: TextStyles.roboto12),
                  cursorColor: Colors.black,
                  controller: TextEditingController(),
                  maxLines: 7,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        side: WidgetStateProperty.all(const BorderSide(
                            color: Color.fromARGB(255, 210, 209, 209),
                            width: 1.0)),
                      ),
                      child: Text(
                        'Save',
                        style: TextStyles.roboto14Color20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '3. Question Placeholder',
                  style: TextStyles.roboto16,
                ),
                const SizedBox(height: 12),
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
                      hintText: 'Input',
                      hintStyle: TextStyles.roboto12),
                  cursorColor: Colors.black,
                  controller: TextEditingController(),
                  maxLines: 7,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        side: WidgetStateProperty.all(const BorderSide(
                            color: Color.fromARGB(255, 210, 209, 209),
                            width: 1.0)),
                      ),
                      child: Text(
                        'Save',
                        style: TextStyles.roboto14Color20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
