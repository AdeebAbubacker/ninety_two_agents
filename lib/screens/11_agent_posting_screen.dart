// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/1_splash_screen.dart';
import 'package:ninetytwoagents/screens/10_agents_post_listing_screen.dart';

class AgentPostingScreen extends StatefulWidget {
  const AgentPostingScreen({super.key});

  @override
  State<AgentPostingScreen> createState() => _AgentPostingScreenState();
}

class _AgentPostingScreenState extends State<AgentPostingScreen> {
  final _detailsController = TextEditingController();
  final _postController = TextEditingController();
  final _notesController = TextEditingController();
  final detailsFocusNode = FocusNode();
  final postsFocusNode = FocusNode();
  final notesFocusNode = FocusNode();
  final _unfocusedFocusNode = FocusNode();

  @override
  void dispose() {
    _detailsController.dispose();
    _postController.dispose();
    _notesController.dispose();
    detailsFocusNode.dispose();
    postsFocusNode.dispose();
    notesFocusNode.dispose();
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
          'My posts',
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
      body: GestureDetector(
        onTap: () {
          _unfocusAll();
        },
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const AgentsPostListingScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SplashScreen()),
            );
          }
        },
        child: SafeArea(
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Travel Accessories",
                                    style: TextStyles.roboto16,
                                  ),
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
                              crossAxisAlignment: WrapCrossAlignment.start,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.close_rounded),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                'Not updated yet',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                'Location not provided yet',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Details',
                    style: TextStyles.roboto16,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    focusNode: detailsFocusNode,
                    decoration: const InputDecoration(
                      focusColor: Colors.black12,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    cursorColor: Colors.black,
                    controller: _detailsController,
                    maxLines: 7,
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Post Overview',
                    style: TextStyles.roboto16,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    focusNode: postsFocusNode,
                    decoration: const InputDecoration(
                      focusColor: Colors.black12,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    cursorColor: Colors.black,
                    controller: _postController,
                    maxLines: 7,
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Notes History',
                    style: TextStyles.roboto16,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    focusNode: notesFocusNode,
                    decoration: const InputDecoration(
                      focusColor: Colors.black12,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    cursorColor: Colors.black,
                    controller: _notesController,
                    maxLines: 7,
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Applied Agents',
                    style: TextStyles.roboto16,
                  ),
                  Center(child: Image.asset('assets/Empty Box.png'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
