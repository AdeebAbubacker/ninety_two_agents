// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/common/5_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/common/7_profile_settings_screen.dart';
import 'package:ninetytwoagents/widgets/searchfield.dart';

class AgentdetailsSellerScreen extends StatefulWidget {
  const AgentdetailsSellerScreen({super.key});

  @override
  State<AgentdetailsSellerScreen> createState() => _AgentdetailsSellerScreenState();
}

class _AgentdetailsSellerScreenState extends State<AgentdetailsSellerScreen> {
  final _searchController = TextEditingController();
  final searchFocusNode = FocusNode();
  final _unfocusedFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    searchFocusNode.dispose();
    _unfocusedFocusNode.dispose();
    super.dispose();
  }

  void _unfocusAll() {
    FocusScope.of(context).requestFocus(_unfocusedFocusNode);
  }

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
          'Agent Details',
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
      body: GestureDetector(
        onTap: () {
          _unfocusAll();
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProfileSettingsScreen()),
            );
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SearchField(
                    searchController: TextEditingController(),
                    focusNode: FocusNode(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 4,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '100 Agents are listed below',
                            style: TextStyles.roboto12,
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.filter_list))
                    ],
                  ),
                ),
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
                                  horizontal: 20,
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
                                              Text("Name of the Agent",
                                                  style: TextStyles.roboto16),
                                              Text(
                                                'Offline',
                                                style:
                                                    TextStyles.roboto12Color0D,
                                              )
                                            ],
                                          ),
                                        ),
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
                                            Text('18 Monday Sep 2023 5:00 AM'),
                                          ],
                                        )
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
                                            '10 Downing St, Westminster, London SW1A 2AA, UK',
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
