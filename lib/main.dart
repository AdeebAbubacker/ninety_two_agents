import 'package:flutter/material.dart';
import 'package:ninetytwoagents/client/main_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_12%20personal_bio_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_9%20create_blog_screen.dart';
import 'package:ninetytwoagents/screens/section%202/2_3%20filter_bottom_sheet.dart';
import 'package:ninetytwoagents/screens/section%202/2_4%20agents_profile.dart';

//-----------------------------------------
void main() {
  runApp(const MyApp());
}

//-----------------------------------------
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
      home: const AgentsProfileScreen(),
    );
  }
}
