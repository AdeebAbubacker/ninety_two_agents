// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';

class SellerBookMarksScreen extends StatefulWidget {
  const SellerBookMarksScreen({super.key});

  @override
  State<SellerBookMarksScreen> createState() => _SellerBookMarksScreenState();
}

class _SellerBookMarksScreenState extends State<SellerBookMarksScreen> {
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
          'My Bookmarks',
          style: TextStyles.roboto20Color00,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Card(
                color: Colors.white,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 3,
                          color: Color.fromARGB(255, 241, 241, 241),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 16,
                      bottom: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Column(
                              children: [
                                CircleAvatar(
                                  radius: 29,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Travel Accessories",
                                    style: TextStyles.roboto16,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_rounded))
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Ultimate Noise Cancelling Headphones for pure musical bass',
                          softWrap: true,
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          children: [
                            Icon(Icons.access_time_rounded),
                            SizedBox(width: 10),
                            Text('18 Monday Sep 2023 5:00 AM'),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(
                              Icons.bookmark,
                              color: Color(0XFF74C52C),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Location not provied yet',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
