// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/4_signup_as_buyer.dart';
import 'package:ninetytwoagents/screens/6_agent_details_screen.dart';
import 'package:ninetytwoagents/widgets/drawer_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String selectedItem = 'Dashboard'; // Default selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color(0XFF172038),
        child: Column(
          children: [
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Ellipse 1.png'),
                const SizedBox(width: 16),
                Text(
                  'Margret Teresa',
                  style: TextStyles.roboto14ColorFF,
                )
              ],
            ),
            const SizedBox(height: 30),
            DrawerButtons(
              title: 'Dashboard',
              icon: 'assets/drawer_icons/dashboard.png',
              isSelected: selectedItem == 'Dashboard',
              onTap: () {
                setState(() {
                  selectedItem = 'Dashboard';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'My Posts',
              icon: 'assets/drawer_icons/myposts.png',
              isSelected: selectedItem == 'My Posts',
              onTap: () {
                setState(() {
                  selectedItem = 'My Posts';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'Find Agents',
              icon: 'assets/drawer_icons/search.png',
              isSelected: selectedItem == 'Find Agents',
              onTap: () {
                setState(() {
                  selectedItem = 'Find Agents';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'Profile',
              icon: 'assets/drawer_icons/profile.png',
              isSelected: selectedItem == 'Profile',
              onTap: () {
                setState(() {
                  selectedItem = 'Profile';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'Tests',
              icon: 'assets/drawer_icons/tests.png',
              isSelected: selectedItem == 'Tests',
              onTap: () {
                setState(() {
                  selectedItem = 'Tests';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'Notes',
              icon: 'assets/drawer_icons/notes.png',
              isSelected: selectedItem == 'Notes',
              onTap: () {
                setState(() {
                  selectedItem = 'Notes';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'Bookmark',
              icon: 'assets/drawer_icons/bookmark.png',
              isSelected: selectedItem == 'Bookmark',
              onTap: () {
                setState(() {
                  selectedItem = 'Bookmark';
                });
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
            DrawerButtons(
              title: 'Blog',
              icon: 'assets/drawer_icons/blog.png',
              isSelected: selectedItem == 'Blog',
              onTap: () {
                setState(() {
                  selectedItem = 'Blog';
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
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
                  builder: (context) => const SignupAsBuyerScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AgentdetailsScreen()),
            );
          }
        },
        child:
         SafeArea(
        child: Center(
          child: Container(
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
            width: MediaQuery.of(context).size.width * 0.86,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/dashboard/9961072 1.png'),
                  const SizedBox(height: 20),
                  Text(
                    'Welcome to your Dashboard',
                    style: TextStyles.roboto16Color66,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
