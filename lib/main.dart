import 'package:flutter/material.dart';
import 'package:ninetytwoagents/client/main_screen.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_13_agent_security_settings.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_14_agent_change_password.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_15_agents_payment_info.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_16_download_unpaid_invoice.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_1_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_3_connected_jobs.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_5_my_selected_jobs_screen.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/6_7_profile_seetings_screen.dart';
import 'package:ninetytwoagents/screens/section%203/3_1_skill_tests_screen.dart';
import 'package:ninetytwoagents/screens/section%203/3_2_agents_inbox.dart';
import 'package:ninetytwoagents/screens/section%201/1_splash_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/14_seller_dashboard_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/15_seller_posts_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/16_agent_details_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/17_seller_profile_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/18_seller_security_settings_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/19_seller_change_password_screen%20copy.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/20_seller_skill_tests_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/21_mybookmarks_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/22_blog_list_screen.dart';
import 'package:ninetytwoagents/screens/section%204%20-%20seller/23_sellers_inbox.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/stepper_screens/1_personal_bio_update.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/stepper_screens/2_personal_bio_update_screen2.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/stepper_screens/3_personal_bio_update.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/stepper_screens/4_personal_bio_update.dart';
import 'package:ninetytwoagents/screens/section%206%20-%20%20agents/stepper_screens/5_personal_bio_update.dart';
import 'package:ninetytwoagents/widgets/quil%20form%20widgets/quil_from.dart';
//-----------------------------------------
void main() {
  runApp(const MyApp());
}
//----------------------------------
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
      //home:  const AdeebStext(),
       home: const MainScreen(),
    );
  }
}

