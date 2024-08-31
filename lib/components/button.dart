import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool duplo;
  final Color color;

  Button({
    super.key,
    required this.text,
    this.duplo = false,
    this.color = DEFAULT,
  });

  Button.duplo({
    super.key,
    required this.text,
    this.duplo = true,
    this.color = DEFAULT,
  });

  Button.operation({
    super.key,
    required this.text,
    this.duplo = false,
    this.color = OPERATION,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: duplo ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: this.color,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
