import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%202/2_1_agents_post_listing_screen.dart';
import 'package:ninetytwoagents/screens/section%202/2_2_agent_posting_screen.dart';
import 'package:ninetytwoagents/screens/section%203/3_1_skill_tests_screen.dart';
import 'package:ninetytwoagents/screens/section%203/3_2_agents_inbox.dart';
import 'package:ninetytwoagents/screens/section%201/1_splash_screen.dart';
import 'package:ninetytwoagents/screens/section%201/2_signin_screen.dart';
import 'package:ninetytwoagents/screens/section%201/3_role_screen.dart';
import 'package:ninetytwoagents/screens/section%201/5_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/section%201/6_agent_details_screen.dart';
import 'package:ninetytwoagents/screens/section%201/7_profile_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%201/8_security_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%201/9_change_password_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/14_seller_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/15_seller_posts_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/16_agent_details_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/17_seller_profile_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/18_seller_security_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/19_seller_change_password_screen%20copy.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/20_seller_skill_tests_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/21_mybookmarks_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/23_sellers_inbox.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screens List"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Common Screens',
                  style: TextStyles.roboto20Color00,
                ),
                const SizedBox(
                  height: 34,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SplashScreen();
                      },
                    ));
                  },
                  text: 'Splash Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SigninScreen();
                      },
                    ));
                  },
                  text: 'Sigin Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SignUpRolePage();
                      },
                    ));
                  },
                  text: 'Role Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const DashboardScreen();
                      },
                    ));
                  },
                  text: 'Dashboard Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AgentdetailsScreen();
                      },
                    ));
                  },
                  text: 'Agentdetails Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ProfileSettingsScreen();
                      },
                    ));
                  },
                  text: 'ProfileSettings Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SecuritySettingsScreen();
                      },
                    ));
                  },
                  text: 'SecuritySettings Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ChangePasswordScreen();
                      },
                    ));
                  },
                  text: 'ChangePassword Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AgentsPostListingScreen();
                      },
                    ));
                  },
                  text: 'AgentsPostListing Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AgentPostingScreen();
                      },
                    ));
                  },
                  text: 'AgentPosting Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SkillTestsScreen();
                      },
                    ));
                  },
                  text: 'SkillTests Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AgentsInbox();
                      },
                    ));
                  },
                  text: 'AgentsInbox Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'Seller Screens',
                  style: TextStyles.roboto20Color00,
                ),
                const SizedBox(
                  height: 34,
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerDashboardScreen();
                      },
                    ));
                  },
                  text: 'Seller Dashboard Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerPostsScreen();
                      },
                    ));
                  },
                  text: 'Seller Posts Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AgentdetailsSellerScreen();
                      },
                    ));
                  },
                  text: 'Agent Details Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerProfileSettingsScreen();
                      },
                    ));
                  },
                  text: 'Seller Profile Settings Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerSecuritySettingsScreen();
                      },
                    ));
                  },
                  text: 'Seller Security Settings Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerChangePasswordScreen();
                      },
                    ));
                  },
                  text: 'Seller Change Password Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerSkillTestsScreen();
                      },
                    ));
                  },
                  text: 'Seller Skill Tests Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerBookMarksScreen();
                      },
                    ));
                  },
                  text: 'Bookmarks Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellerBookMarksScreen();
                      },
                    ));
                  },
                  text: 'Blog List Screen',
                ),
                const SizedBox(
                  height: 14,
                ),
                DemoButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SellersInbox();
                      },
                    ));
                  },
                  text: 'Seller Inbox Screen',
                ),
                const SizedBox(
                  height: 54,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DemoButton extends StatelessWidget {
  final VoidCallback voidCallback;
  final String text;
  const DemoButton({
    super.key,
    required this.voidCallback,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(onPressed: voidCallback, child: Text(text)));
  }
}
