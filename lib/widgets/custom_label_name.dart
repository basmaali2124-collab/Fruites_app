import 'package:flutter/material.dart';

class LabelName extends StatelessWidget {
  const LabelName({
    super.key,
    required this.labelName
  });
final String labelName;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: RichText(
        text: TextSpan(
          text: labelName,
          style: TextStyle(color: Color(0xFF858D9A)),
          children: [
            TextSpan(
              text: '*',
              style: TextStyle(color: Color(0xFFED692E)),
            ),],),),);
  }
}
