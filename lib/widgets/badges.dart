import 'package:flutter/material.dart';


class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(color: Colors.lime,borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black,width: 2),
      ),
    ),
    );
  }
}
