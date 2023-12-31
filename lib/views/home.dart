import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/current_chapter_card.dart';
import 'package:rights_quest/widgets/progress_track_card.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding
            child: CurrentChapterCard(),
          ),
          SizedBox(height: 16), // Add space between the cards (adjust the height as needed)
          ProgressTrackCard(),

          SizedBox(height: 10), // Add space between the cards (adjust the height as needed)
        ],
      ),
    );
  }
}
