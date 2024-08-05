import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Text(
                '0',
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
              buildButton('/'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
              buildButton('*'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
              buildButton('-'),
            ],
          ),
          Row(
            children: <Widget>[
              buildButton('0'),
              buildButton('.'),
              buildButton('='),
              buildButton('+'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(24),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {},
      ),
    );
  }
}
