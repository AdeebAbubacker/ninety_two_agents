// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/screens/section%201/1_2%20signin_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_5%20dashboard_screen.dart';
class SignUpRolePage extends StatefulWidget {
  const SignUpRolePage({super.key});

  @override
  State<SignUpRolePage> createState() => _SignUpRolePageState();
}

class _SignUpRolePageState extends State<SignUpRolePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swiped Right
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const SigninScreen()),
            );
          } else if (details.primaryVelocity! < 0) {
            // Swiped Left
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const DashboardScreen()),
            );
          }
        },
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text('Choose your Sign Up role',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      //   const SignupScreen()));
                    },
                    child: Container(
                      width: 256,
                      height: 256,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/roles/buyer_asset.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text('Become a Buyer',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 256,
                    height: 256,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/roles/seller_asset.png'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text('Become a Seller',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 256,
                    height: 256,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/roles/agent_asset.png'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text('Become a Agent',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      )),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
