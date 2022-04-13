import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  const TextWidget({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          overflow: TextOverflow.visible),
    );
  }
}

class TxtFormField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;

  const TxtFormField({
    Key? key,
    this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
