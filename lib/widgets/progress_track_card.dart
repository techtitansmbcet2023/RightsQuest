import 'package:flutter/material.dart';

class ProgressTrackCard extends StatelessWidget {
  const ProgressTrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black,width: 2)
      ),
    );
  }
}
