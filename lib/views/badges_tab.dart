import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/badges.dart';

class BadgesTab extends StatelessWidget {
  const BadgesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        SizedBox(height: 5,),
        Badges(),
        SizedBox(height: 10,),
        Badges(),

        SizedBox(height: 5,),
      ],
    );
  }
}
