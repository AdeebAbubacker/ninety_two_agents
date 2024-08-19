import 'package:flutter/material.dart';
import 'package:ninetytwoagents/client/main_screen.dart';
import 'package:ninetytwoagents/screens/section%201/1_4%20signup_as_buyer.dart';

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
       home: const SignupAsBuyerScreen(),
    );
  }
}

