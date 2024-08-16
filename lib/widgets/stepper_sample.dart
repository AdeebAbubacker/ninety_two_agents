import 'package:flutter/material.dart';


class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  // Updated the title list to include 5 steps
  List<String> title = ['Step 1', 'Step 2', 'Step 3', 'Step 4', 'Step 5'];
  int step = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                for (int i = 0; i < title.length - 1; i++)
                  Expanded(
                      child: Row(
                    children: [
                      circleStepper(i),
                      Expanded(child: lineStepper(i))
                    ],
                  )),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: circleStepper(title.length - 1),
                )
              ],
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < title.length - 1; i++)
                Expanded(child: stepperTitle(i)),
              stepperTitle(title.length - 1)
            ],
          )
        ],
      ),
    );
  }

  Widget stepperTitle(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'STEP ${index + 1}',
            style: TextStyle(
                color: Colors.black.withOpacity(.3),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget lineStepper(int index) {
    return Container(
      width: double.infinity,
      height: 5,
      color: index < step ? Colors.green : Colors.green.withOpacity(.2),
    );
  }

  Widget circleStepper(int index) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.5),
          border: Border.all(
              color:
                  index >= step ? Colors.green.withOpacity(.1) : Colors.green,
              width: 2,
              style: BorderStyle.solid)),
      child: Container(
        margin: EdgeInsets.all(index == step ? 2 : 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index >= step ? Colors.green.withOpacity(.1) : Colors.green),
        child: index < step
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              )
            : index > step
                ? Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.green, width: 1)),
                  )
                : Text('${index + 1}',
                    style: const TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
