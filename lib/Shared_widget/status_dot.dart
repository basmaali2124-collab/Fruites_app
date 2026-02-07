import 'package:flutter/material.dart';

class StatueDot extends StatelessWidget {
  const StatueDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: Color(0xFFC8C8C8), // أخضر
        shape: BoxShape.circle,
      ),
    );
  }
}