// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/screens/common/4_signup_as_buyer.dart';

class DownloadUnpaidInvoice extends StatefulWidget {
  const DownloadUnpaidInvoice({super.key});

  @override
  State<DownloadUnpaidInvoice> createState() => _DownloadUnpaidInvoiceState();
}

class _DownloadUnpaidInvoiceState extends State<DownloadUnpaidInvoice> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/unpaid_invoice.png',
                    fit: BoxFit.contain,
                  )),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0XFF74C52C))),
                  onPressed: () {},
                  child: Text(
                    "Print",
                    style: TextStyles.roboto14ColorFF,
                  ),
                ),
              ),
              const SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}
