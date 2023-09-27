import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/current_chapter_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CurrentChapterCard(),
        ],
      ),
    );
  }
}
