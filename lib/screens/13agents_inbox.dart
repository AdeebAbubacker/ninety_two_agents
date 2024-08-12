// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';

class AgentsInbox extends StatefulWidget {
  const AgentsInbox({super.key});

  @override
  State<AgentsInbox> createState() => _AgentsInboxState();
}

class _AgentsInboxState extends State<AgentsInbox> {
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
          'Inbox',
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
          child: Column(
            children: [
              SizedBox(height: 20),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20),
                            const CircleAvatar(
                              radius: 30,
                            ),
                            const SizedBox(width: 20),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              
                                Text('User Name'),
                                Text('Lorum Ipsum')
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert_rounded)),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: const Color.fromARGB(255, 215, 215, 215),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
