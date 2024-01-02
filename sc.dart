// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Scientific Calculator',
//       theme: ThemeData.dark(),
//       home: MyCalculator(),
//     );
//   }
// }

// class MyCalculator extends StatefulWidget {
//   @override
//   _MyCalculatorState createState() => _MyCalculatorState();
// }

// class _MyCalculatorState extends State<MyCalculator> {
//   String input = '';
//   String output = '';

//   void _onButtonClicked(String value) {
//     setState(() {
//       if (value == 'C') {
//         // Clear input and output
//         input = '';
//         output = '';
//       } else if (value == '=') {
//         // Evaluate the expression
//         try {
//           double result = evaluateExpression(input);
//           output = result.toString();
//         } catch (e) {
//           output = 'Error';
//         }
//       } else {
//         // Append the value to the input
//         input += value;
//       }
//     });
//   }

//   double evaluateExpression(String expression) {
//     // Replace the mathematical functions with their corresponding values
//     expression = expression.replaceAll('log', 'log10');
//     expression = expression.replaceAll('sin', 'sin');
//     expression = expression.replaceAll('cos', 'cos');
//     expression = expression.replaceAll('exp', 'exp');

//     // Evaluate the expression using Dart's math library
//     Parser p = Parser();
//     Expression exp = p.parse(expression);
//     ContextModel cm = ContextModel();
//     double result = exp.evaluate(EvaluationType.REAL, cm);
//     return result;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scientific Calculator'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             flex: 2,
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               color: Colors.black,
//               alignment: Alignment.bottomRight,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Text(
//                     input,
//                     style: TextStyle(fontSize: 24.0),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     output,
//                     style: TextStyle(fontSize: 48.0),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               color: Colors.grey[900],
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       buildButton('C', color: Colors.red),
//                       buildButton('(', color: Colors.grey),
//                       buildButton(')', color: Colors.grey),
//                       buildButton('/', color: Colors.orange),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       buildButton('7', color: Colors.black),
//                       buildButton('8',color: Colors.black),
//                       buildButton('9',color: Colors.black),
//                       buildButton('*', color: Colors.orange),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       buildButton('4',color: Colors.black),
//                       buildButton('5',color: Colors.black),
//                       buildButton('6',color: Colors.black),
//                       buildButton('-', color: Colors.orange),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       buildButton('1',color: Colors.black),
//                       buildButton('2',color: Colors.black),
//                       buildButton('3',color: Colors.black),
//                       buildButton('+', color: Colors.orange),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       buildButton('0', flex: 2,color: Colors.black),
//                       buildButton('.',color: Colors.black),
//                       buildButton('=', color: Colors.orange),
//                     ],
//                   ),
//                   Row(
//                     children: <Widget>[
//                       buildButton('log',color: Colors.black),
//                       buildButton('sin',color: Colors.black),
//                       buildButton('cos',color: Colors.black),
//                       buildButton('exp',color: Colors.black),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildButton(String text, {required Color color, int flex = 1}) {
//     return Expanded(
//       flex: flex,
//       child: InkWell(
//         onTap: () => _onButtonClicked(text),
//         child: Container(
//           color: color ?? Colors.grey[850],
//           child: Center(
//             child: Text(
//               text,
//               style: TextStyle(fontSize: 24.0),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Parser {
//   Expression parse(String expression) {
//     // Custom parsing logic can be implemented here
//     // This is just a placeholder class
//     return Expression();
//   }
// }

// class Expression {
//   double evaluate(EvaluationType type, ContextModel cm) {
//     // Custom evaluation logic can be implemented here
//     // This is just a placeholder class
//     return 0.0;
//   }
// }

// class ContextModel {
//   // Custom context model can be implemented here
//   // This is just a placeholder class
// }

// enum EvaluationType {
//   REAL,
// }
