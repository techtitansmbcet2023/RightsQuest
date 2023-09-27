import 'package:flutter/material.dart';


class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(color: Colors.cyan[300],borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black,width: 2),
        ),
        child: Center(
          child: Text("Badge",style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),),
        ),
    ),
    );
  }
}
