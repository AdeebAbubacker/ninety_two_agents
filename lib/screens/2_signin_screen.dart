// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/1_splash_screen.dart';
import 'package:ninetytwoagents/screens/3_role_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SplashScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignUpRolePage()),
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.06,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset(
                      'assets/ninety_two_agents.png',
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 345,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.all(Radius.circular(17)),
                  ),
                  child: Image.asset('assets/roles/signup_house.png'),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Tag line of the application\n goes here",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0XFF74C52C))),
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyles.roboto14ColorFF,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text("Sign Up"))),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
