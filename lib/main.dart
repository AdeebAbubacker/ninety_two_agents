import 'package:flutter/material.dart';
import 'package:ninetytwoagents/screens/agent/6_13_agent_security_settings.dart';
import 'package:ninetytwoagents/screens/agent/6_14_agent_change_password.dart';
import 'package:ninetytwoagents/screens/agent/6_15_agents_payment_info.dart';
import 'package:ninetytwoagents/screens/agent/6_16_download_unpaid_invoice.dart';
import 'package:ninetytwoagents/screens/agent/6_1_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/agent/6_3_connected_jobs.dart';
import 'package:ninetytwoagents/screens/agent/6_5_my_selected_jobs_screen.dart';
import 'package:ninetytwoagents/screens/agent/6_7_profile_seetings_screen.dart';
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
import 'package:ninetytwoagents/screens/seller/stepper_screens/1_personal_bio_update.dart';
import 'package:ninetytwoagents/screens/seller/stepper_screens/2_personal_bio_update_screen2.dart';
import 'package:ninetytwoagents/screens/seller/stepper_screens/3_personal_bio_update.dart';
import 'package:ninetytwoagents/screens/seller/stepper_screens/4_personal_bio_update.dart';
import 'package:ninetytwoagents/screens/seller/stepper_screens/5_personal_bio_update.dart';
import 'package:ninetytwoagents/testing/stepper_sample.dart';

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
      home:  const PersonalBioUpdateScreen5(),
      // home: MyStepper(),
    );
  }
}
