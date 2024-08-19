// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';

class AgentsConnectedjobScreen extends StatefulWidget {
  const AgentsConnectedjobScreen({super.key});

  @override
  State<AgentsConnectedjobScreen> createState() =>
      _AgentsConnectedjobScreenState();
}

class _AgentsConnectedjobScreenState extends State<AgentsConnectedjobScreen> {
  int _selectedOption = 0;
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
          'Connected Jobs',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio<int>(
                      value: 0,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                      activeColor: Colors.green),
                  const Text('All'),
                  Radio<int>(
                      value: 1,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                      activeColor: Colors.green),
                  const Text('Seller'),
                  Radio<int>(
                      value: 2,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                      activeColor: Colors.green),
                  const Text('Buyer'),
                ],
              ),
              const SizedBox(height: 10),
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
                                icon: const Icon(Icons.more_vert_rounded))
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Lorem ipsum dolor sit amet consectetur. Arcu praesent iaculis hendrerit augue amet mauris maecenas magnis at. Eget est mi egestas tellus. Vulputate adipiscing massa adipiscing at lorem dignissim in adipiscing. Gravida at nunc ornare in ullamcorper aliquam sem ornare.',
                          softWrap: true,
                        ),
                        const SizedBox(height: 16),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.person_outline_outlined),
                            SizedBox(width: 10),
                            Text(
                              'User Name',
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.access_time_rounded),
                            SizedBox(width: 10),
                            Text('Posted some time ago'),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.mail_outline_outlined),
                            SizedBox(width: 10),
                            Text(
                              'New message',
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.notifications_none),
                            SizedBox(width: 10),
                            Text(
                              'New notification',
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
