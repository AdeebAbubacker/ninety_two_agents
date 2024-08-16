import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%203/3_2_agents_inbox.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/15_seller_posts_screen.dart';

class SellerDashboardScreen extends StatefulWidget {
  const SellerDashboardScreen({super.key});

  @override
  State<SellerDashboardScreen> createState() => _SellerDashboardScreenState();
}

class _SellerDashboardScreenState extends State<SellerDashboardScreen> {
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
          'Dashboard',
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
      body: GestureDetector(
        onTap: () {
         // _unfocusAll();
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const AgentsInbox()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const  SellerPostsScreen()),
            );
          }
        },
        child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    height: 110,
                    child: Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 30,
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Wrap(
                                spacing: 8,
                                runSpacing: 4,
                                children: [
                                  Text(
                                    'You selected Agent (Agent Name) for  post (Post Name)',
                                    style: TextStyle(fontSize: 14),
                                    softWrap: true,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.access_time_rounded),
                                      SizedBox(width: 6),
                                      Text(
                                        '22 Dec 5:00 AM',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: const Color.fromARGB(255, 215, 215, 215),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
