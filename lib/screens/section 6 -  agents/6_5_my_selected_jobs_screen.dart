// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';

class MySelectedJobsScreen extends StatelessWidget {
  const MySelectedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFFFFF),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: Text('My Selected Jobs', style: TextStyles.roboto20Color00),
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
              Tab(text: 'Payment Pending'),
              Tab(text: 'Payment Completed'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Content for Tab 1')),
            Center(child: Text('Content for Tab 2')),
          ],
        ),
      ),
    );
  }
}
