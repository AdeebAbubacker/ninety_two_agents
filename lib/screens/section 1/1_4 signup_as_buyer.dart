// // ignore_for_file: file_names

 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
final _fromKey = GlobalKey<FormState>();

class SignupAsBuyerScreen extends StatefulWidget {
  const SignupAsBuyerScreen({super.key});

  @override
  State<SignupAsBuyerScreen> createState() => _SignupAsBuyerScreenState();
}

class _SignupAsBuyerScreenState extends State<SignupAsBuyerScreen> {
  bool ischecked = false;
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final nameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  final _unfocusedFocusNode = FocusNode(); // Unused FocusNode

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    nameFocusNode.dispose();
    lastNameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    _unfocusedFocusNode.dispose();
    super.dispose();
  }

  void _unfocusAll() {
    FocusScope.of(context).requestFocus(_unfocusedFocusNode);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        _unfocusAll();
      },
      // onHorizontalDragEnd: (details) {
      //   if (details.primaryVelocity! > 0) {
      //     // Swiped Right
      //     Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(builder: (context) => const SignUpRolePage()),
      //     );
      //   } else if (details.primaryVelocity! < 0) {
      //     // Swiped Left
      //     Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(builder: (context) => const DashboardScreen()),
      //     );
      //   }
      // },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          title: Text('Buyer',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              )),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: _fromKey,
            child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    const SizedBox(height: 24),
                  CustomTextFormField(
                    textController: _nameController,
                    focusNode: nameFocusNode,
                    labelText: 'First Name',
                  ),
                    const SizedBox(height: 24),
                  CustomTextFormField(
                    textController: _lastNameController,
                    focusNode: lastNameFocusNode,
                    labelText: 'Last Name',
                  ),  const SizedBox(height: 24),
                  CustomTextFormField(
                    textController: _emailController,
                    focusNode: emailFocusNode,
                    labelText: 'Email',
                  ),  const SizedBox(height: 24),
                  CustomTextFormField(
                    textController: _passwordController,
                    focusNode: passwordFocusNode,
                    labelText: 'Password',
                  ),  const SizedBox(height: 24),
                  CustomTextFormField(
                    textController: _confirmPasswordController,
                    focusNode: confirmPasswordFocusNode,
                    labelText: 'Confirm Password',
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: ischecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              ischecked = newValue!;
                            });
                          }),
                      Wrap(
                        children: [
                          Text(
                            'I read and accept the',
                            style: GoogleFonts.roboto(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Terms and Conditions',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 90,
                  ),
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
                          "Sign Up",
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
                            onPressed: () {}, child: const Text("Cancel"))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textController;
  final FocusNode focusNode;
  final String labelText;
  CustomTextFormField({
    super.key,
    required this.textController,
    required this.focusNode,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
          hintText: "Input",
          labelText: labelText,
          border: const OutlineInputBorder()),
    );
  }
}
