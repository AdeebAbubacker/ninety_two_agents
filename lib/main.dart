import 'package:flutter/material.dart';
import 'package:ninetytwoagents/screens/common/12_skill_tests_screen.dart';
import 'package:ninetytwoagents/screens/common/13agents_inbox.dart';
import 'package:ninetytwoagents/screens/seller/14_seller_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/seller/15_seller_posts_screen%20copy.dart';
import 'package:ninetytwoagents/screens/seller/16_agent_details_screen.dart';
import 'package:ninetytwoagents/screens/seller/17_seller_profile_settings_screen.dart';
import 'package:ninetytwoagents/screens/seller/18_seller_security_settings_screen.dart';
import 'package:ninetytwoagents/screens/seller/19_seller_change_password_screen%20copy.dart';
import 'package:ninetytwoagents/screens/seller/20_seller_skill_tests_screen.dart';
import 'package:ninetytwoagents/screens/seller/21_mybookmarks_screen.dart';
import 'package:ninetytwoagents/screens/seller/22_blog_list_screen.dart';
import 'package:ninetytwoagents/screens/seller/23_sellers_inbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SellersInbox(),
    );
  }
}
//-------------------------------------------------------------------------------