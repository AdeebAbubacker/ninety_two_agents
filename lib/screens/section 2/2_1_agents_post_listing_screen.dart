// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%202/2_2_agent_posting_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_13%20change_password_screen.dart';


class AgentsPostListingScreen extends StatelessWidget {
  const AgentsPostListingScreen({super.key});

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
          'My Posts',
          style: TextStyles.roboto20Color00,
        ),
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
      body:  GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const  ChangePasswordScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const  AgentPostingScreen()),
            );
          }
        },
        child:  SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Travel Accessories",
                                              style: TextStyles.roboto16,
                                            ),
                                            Text(
                                              '3 agents applied',
                                              style: TextStyles.roboto12Color0D,
                                            )
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.more_vert_rounded))
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  const Row(
                                    children: [
                                      Icon(Icons.access_time_rounded),
                                      SizedBox(width: 10),
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        runAlignment: WrapAlignment.start,
                                        alignment: WrapAlignment.start,
                                        direction: Axis.horizontal,
                                        children: [
                                          Text('Posted some time ago'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      SizedBox(width: 10),
                                      Flexible(
                                        child: Text(
                                          'Location not provied yet',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.close),
                                      SizedBox(width: 10),
                                      Flexible(
                                        child: Text(
                                          'Not updated yet',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
