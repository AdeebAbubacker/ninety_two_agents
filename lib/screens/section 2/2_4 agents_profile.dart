import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetytwoagents/core/const/text_style/text_styles.dart';
import 'package:ninetytwoagents/widgets/custom_textformfield.dart';

class AgentsProfileScreen extends StatefulWidget {
  const AgentsProfileScreen({super.key});

  @override
  State<AgentsProfileScreen> createState() => _AgentsProfileScreenState();
}

class _AgentsProfileScreenState extends State<AgentsProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Center(
            child: Text('My Profile',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                )),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 10),
                      child: CircleAvatar(
                        radius: 50,
                        child: Image.asset(
                          'assets/Profile.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text('Travel Accessories',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ))),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Location Details',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ))),
                    const SizedBox(
                      height: 22,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Documents',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ))),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Container(
                    height: 133,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset('assets/profiledocument.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Image 1',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ))),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Container(
                    height: 133,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset('assets/profiledocument.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Image 2',
                  style: TextStyles.roboto12,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          foregroundColor: const Color(0xffFFFFFF),
          backgroundColor: const Color(0xff74C52C),
          onPressed: () {
            _uploadDocBottomSheet(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

final _posttitleController = TextEditingController();
Future _uploadDocBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      isDismissible: true,
      builder: (context) {
        return Container(
          // height: 500,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  'Upload Document',
                  style: TextStyles.roboto12Color0D,
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  controller: _posttitleController,
                  labelText: 'File Name',
                  hintText: 'What is your place of birth?',
                  focusNode: FocusNode(),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.7,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(child: Image.asset('assets/upload_frame.png')),
                ),
                SizedBox(
                  height: 15,
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
                SizedBox(height: 30),
              ],
            ),
          ),
        );
      });
}
