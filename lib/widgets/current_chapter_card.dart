import 'package:flutter/material.dart';

class CurrentChapterCard extends StatelessWidget {
  const CurrentChapterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xFF009099),borderRadius: BorderRadius.circular(15)),
    );
  }
}
