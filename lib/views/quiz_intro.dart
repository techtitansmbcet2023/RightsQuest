import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/top_app_bar.dart';
import 'quiz.dart';


class QuizIntroPage extends StatelessWidget {
  const QuizIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chapter 3: Cyber Bullying", // Title
                  style: TextStyle(
                    fontSize: 24, // Adjust the font size as needed
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20), // Add spacing between title and image

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('lib/assets/images/sketch_3_clipdrop-cleanup.jpeg'),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
              child: Text(
                "In their close-knit group of friends, Aarav, Rohan, Dia, and Mira had always been each other's pillars of support. Their adventures were filled with laughter and learning, but one day, their bonds were tested when Mira became a victim of cyberbullying.",
                softWrap: true,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),

            SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton( // Change TextButton to ElevatedButton
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),

                ElevatedButton( // Change TextButton to ElevatedButton
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizPage()),
                    );
                  },
                  child: Text("Next"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
