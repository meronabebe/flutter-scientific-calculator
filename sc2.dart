// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

// void main() {
//   runApp(CalculatorApp());
// }

// class CalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Scientific Calculator',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: CalculatorScreen(),
//     );
//   }
// }

// class CalculatorScreen extends StatefulWidget {
//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
//   String _expression = '';
//   String _result = '';

//   void _onButtonPressed(String buttonText) {
//     setState(() {
//       if (buttonText == '=') {
//         _evaluateExpression();
//       } else if (buttonText == 'C') {
//         _clearExpression();
//       } else {
//         _expression += buttonText;
//       }
//     });
//   }

//   void _evaluateExpression() {
//     try {
//       Parser p = Parser();
//       Expression exp = p.parse(_expression);
//       ContextModel cm = ContextModel();
//       double eval = exp.evaluate(EvaluationType.REAL, cm);
//       setState(() {
//         _result = eval.toString();
//       });
//     } catch (e) {
//       setState(() {
//         _result = 'Error';
//       });
//     }
//   }

//   void _clearExpression() {
//     setState(() {
//       _expression = '';
//       _result = '';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scientific Calculator'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               alignment: Alignment.bottomRight,
//               child: Text(
//                 _expression,
//                 style: TextStyle(fontSize: 24.0),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               alignment: Alignment.bottomRight,
//               child: Text(
//                 _result,
//                 style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Divider(height: 0.0),
//           Expanded(
//             flex: 4,
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//               ),
//               itemBuilder: (BuildContext context, int index) {
//                 final buttonText = _buttonTexts[index];
//                 return InkWell(
//                   onTap: () => _onButtonPressed(buttonText),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                     ),
//                     child: Center(
//                       child: Text(
//                         buttonText,
//                         style: TextStyle(fontSize: 24.0),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               itemCount: _buttonTexts.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   final List<String> _buttonTexts = [
//     '7',
//     '8',
//     '9',
//     '÷',
//     '4',
//     '5',
//     '6',
//     '*',
//     '1',
//     '2',
//     '3',
//     '-',
//     '0',
//     '.',
//     'C',
//     '+',
//     '(',
//     ')',
//     '=',
//     'sin',
//     'cos',
//     'tan',
//     'log',
//     'exp',
//   ];
// }
