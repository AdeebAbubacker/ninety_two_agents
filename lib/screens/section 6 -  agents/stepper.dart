// import 'package:flutter/material.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// class HorizontalStepper extends StatefulWidget {
//   @override
//   _HorizontalStepperState createState() => _HorizontalStepperState();
// }

// class _HorizontalStepperState extends State<HorizontalStepper> {
//   int _currentStep = 0;

//   List<String> _steps = [
//     'Step 1',
//     'Step 2',
//     'Step 3',
//     'Step 4',
//     'Step 5',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Stepper Indicator
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: StepProgressIndicator(
//               totalSteps: _steps.length,
//               currentStep: _currentStep + 1,
//               selectedColor: Colors.blue,
//               unselectedColor: Colors.grey,
//               size: 30,
//               padding: 0,
//               roundedEdges: Radius.circular(10),
//             ),
//           ),
//           // Step Labels
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(
//                 _steps.length,
//                 (index) => Expanded(
//                   child: Column(
//                     children: [
//                       Text(
//                         _steps[index],
//                         style: TextStyle(
//                           color:
//                               _currentStep == index ? Colors.blue : Colors.grey,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Stepper Content
//           Expanded(
//             child: Center(
//               child: Text(
//                 'Content for ${_steps[_currentStep]}',
//                 style: TextStyle(fontSize: 24),
//               ),
//             ),
//           ),
//           // Navigation Buttons
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: _currentStep > 0
//                       ? () {
//                           setState(() {
//                             _currentStep--;
//                           });
//                         }
//                       : null,
//                   child: Text('Back'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _currentStep < _steps.length - 1
//                       ? () {
//                           setState(() {
//                             _currentStep++;
//                           });
//                         }
//                       : null,
//                   child: Text('Next'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
