// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/seller/22_blog_list_screen.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';

class AllMyJobsScreen extends StatelessWidget {
  const AllMyJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFFFFF),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: Text('All My Jobs', style: TextStyles.roboto20Color00),
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
          bottom: const TabBar(
            indicatorColor: Color(0XFF74C52C),
            labelColor: Color(0XFF74C52C),
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Paid'),
              Tab(text: 'Unpaid'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AllJobs(),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
          ],
        ),
      ),
    );
  }
}

class AllJobs extends StatelessWidget {
  const AllJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextFormField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                labelText: 'Input',
                hintText: 'Input'),
            const SizedBox(height: 16),
            CustomTextFormField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                labelText: 'Buyer',
                hintText: 'Buyer'),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyRadio(),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Travel Accessories',
                      style: TextStyles.roboto16Color00,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'status',
                              style: TextStyles.roboto12,
                            ),
                            const Text('Closing Pending'),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Posted By',
                              style: TextStyles.roboto12,
                            ),
                            const Text('User Name'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_up_outlined))
              ],
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                labelText: 'Address',
                hintText: 'Address'),
            const SizedBox(height: 16),
            CustomTextFormField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                labelText: 'Platform Fee',
                hintText: 'Platform Fee'),
            const SizedBox(height: 16),
            CustomTextFormField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                labelText: 'Closing Date',
                hintText: 'Closing Date'),
            const SizedBox(height: 16),
            CustomTextFormField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                labelText: 'Sale Price',
                hintText: 'Sale Price'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: 120,
                    height: 48,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Save"))),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0XFF74C52C))),
                onPressed: () {},
                child: Text(
                  "Pay Now",
                  style: TextStyles.roboto14ColorFF,
                ),
              ),
            ),
            const SizedBox(height: 130),
          ],
        ),
      ),
    );
  }
}
