import 'package:calculadora/components/display.dart';
import 'package:calculadora/components/keyboard.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display('valores...'),
          Keyboard(),
        ],
      ),
    );
  }
}
