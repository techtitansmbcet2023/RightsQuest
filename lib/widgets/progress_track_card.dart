import 'package:flutter/material.dart';

class ProgressTrackCard extends StatelessWidget {
  const ProgressTrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
    );
  }
}