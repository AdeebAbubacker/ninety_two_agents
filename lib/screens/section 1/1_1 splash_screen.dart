// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/screens/section%202/2_2_agent_posting_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_2%20signin_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          // Swiped Right
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const AgentPostingScreen()),
          );
        } else if (details.primaryVelocity! < 0) {
          // Swiped Left
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SigninScreen()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset('assets/ninety_two_agents.png'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
