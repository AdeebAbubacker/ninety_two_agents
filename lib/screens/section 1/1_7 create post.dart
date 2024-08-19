import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';
import 'package:ninetytwoagents/widgets/quil%20form%20widgets/quil_from.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => __CreatePostScreenState();
}

class __CreatePostScreenState extends State<CreatePostScreen> {
  final _posttitleController = TextEditingController();
  bool _firsttimebuyer = false;
  bool _hometosell = false;
  bool _needhelp = false;
  bool _foreclosure = false;
  bool _cashBack = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text('Enter your Post Details',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Post Title'),
                const SizedBox(height: 24),
                const QuilFrom(),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'State'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'City'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Neighbourhood'),
                const SizedBox(height: 24),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 6,
                  color: const Color(0xffF4F4F4),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Zip Codes where do you want to focus',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Zip Code'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Zip Code'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Zip Code'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Zip Code'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Zip Code'),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 6,
                  color: const Color(0xffF4F4F4),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Where do you want to buy?'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Pice Range'),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Property Type'),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Are you a first time home buyer?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Radio(
                        value: true,
                        groupValue: _firsttimebuyer,
                        onChanged: (bool? value) {
                          setState(() {
                            _firsttimebuyer = value!;
                          });
                        },
                      ),
                      const Text('Yes'),
                      Radio(
                        value: false,
                        groupValue: _firsttimebuyer,
                        onChanged: (bool? value) {
                          setState(() {
                            _firsttimebuyer = value!;
                          });
                        },
                      ),
                      const Text('No'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 6,
                  color: const Color(0xffF4F4F4),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Do you have a home to sell?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Radio(
                        value: true,
                        groupValue: _hometosell,
                        onChanged: (bool? value) {
                          setState(() {
                            _hometosell = value!;
                          });
                        },
                      ),
                      const Text('Yes'),
                      Radio(
                        value: false,
                        groupValue: _hometosell,
                        onChanged: (bool? value) {
                          setState(() {
                            _hometosell = value!;
                          });
                        },
                      ),
                      const Text('No'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'If so do you need help selling?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Radio(
                        value: true,
                        groupValue: _needhelp,
                        onChanged: (bool? value) {
                          setState(() {
                            _needhelp = value!;
                          });
                        },
                      ),
                      const Text('Yes'),
                      Radio(
                        value: false,
                        groupValue: _needhelp,
                        onChanged: (bool? value) {
                          setState(() {
                            _needhelp = value!;
                          });
                        },
                      ),
                      const Text('No'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Are you interested in buying a foreclosure?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Radio(
                        value: true,
                        groupValue: _foreclosure,
                        onChanged: (bool? value) {
                          setState(() {
                            _foreclosure = value!;
                          });
                        },
                      ),
                      const Text('Yes'),
                      Radio(
                        value: false,
                        groupValue: _foreclosure,
                        onChanged: (bool? value) {
                          setState(() {
                            _foreclosure = value!;
                          });
                        },
                      ),
                      const Text('No'),
                    ],
                  ),
                ),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Email Bids '),
                const SizedBox(height: 24),
                CustomTextFormField(
                    hintText: 'ss',
                    focusNode: FocusNode(),
                    controller: _posttitleController,
                    labelText: 'Do you need financing?'),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Need cash back / Negotiate commission',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Radio(
                          value: true,
                          groupValue: _cashBack,
                          onChanged: (bool? value) {
                            setState(() {
                              _cashBack = value!;
                            });
                          }),
                      const Text('Yes'),
                      Radio(
                          value: false,
                          groupValue: _cashBack,
                          onChanged: (bool? value) {
                            setState(() {
                              _cashBack = value!;
                            });
                          })
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 30,
                    width: 202,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xffEF7D7D)),
                    child: const Center(
                      child: Text(
                        'Some states dont allow cash back',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0XFF74C52C))),
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyles.roboto14ColorFF,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
