// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/section%201/1_4%20signup_as_buyer.dart';

class AgentspaymentInfoScreen extends StatefulWidget {
  const AgentspaymentInfoScreen({super.key});

  @override
  State<AgentspaymentInfoScreen> createState() =>
      _AgentspaymentInfoScreenState();
}

class _AgentspaymentInfoScreenState extends State<AgentspaymentInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Payment Information',
          style: TextStyles.roboto20Color00,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/pending_invoice.png',
                      fit: BoxFit.contain,
                    )),
                const SizedBox(height: 24),
                Text(
                  'Credit or Debit Card',
                  style: TextStyles.roboto14ColorBlackgrey,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  labelText: 'Card Number',
                  textController: TextEditingController(),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.62,
                      child: CustomTextFormField(
                        focusNode: FocusNode(),
                        labelText: 'MM / YY',
                        textController: TextEditingController(),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: CustomTextFormField(
                        focusNode: FocusNode(),
                        labelText: 'CVC',
                        textController: TextEditingController(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 33),
                SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("Download Unpaid Invoice"))),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF74C52C))),
                    onPressed: () {},
                    child: Text(
                      "Pay Now",
                      style: TextStyles.roboto14ColorFF,
                    ),
                  ),
                ),
                const SizedBox(height: 33),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
