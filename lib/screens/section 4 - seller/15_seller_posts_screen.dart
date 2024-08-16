// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/14_seller_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/16_agent_details_screen.dart';

class SellerPostsScreen extends StatefulWidget {
  const SellerPostsScreen({super.key});

  @override
  State<SellerPostsScreen> createState() => _SellerPostsScreenState();
}

class _SellerPostsScreenState extends State<SellerPostsScreen> {
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
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: 
      GestureDetector(
        onTap: () {
         // _unfocusAll();
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const SellerDashboardScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const  AgentdetailsSellerScreen()),
            );
          }
        },
        child:
        SafeArea(
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
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 10),
                            Text(
                              'Location not provied yet',
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(Icons.close),
                            SizedBox(width: 10),
                            Text(
                              'Not updated yet',
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
              ),      ),
    ),
    );
  }
}
