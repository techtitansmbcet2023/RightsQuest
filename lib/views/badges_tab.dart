import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/badges.dart';

class BadgesTab extends StatelessWidget {
  const BadgesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0), // Add horizontal padding
      child: ListView.builder(
        itemCount: 4, // Change the itemCount to 5
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(height: 5),
              Badges(),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}

