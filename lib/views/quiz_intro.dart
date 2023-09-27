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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage('lib/assets/images/sketch_3_clipdrop-cleanup.jpeg'),
                ),
              ),
            ),

            SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
              child: Text(
                "When selecting a name, consider the target audience and the app's overall mission. It's important to choose a name that is easy to remember, spell, and conveys a sense of empowerment and advocacy for children's rights. Additionally, check for trademark availability and domain name availability if you plan to have a website for your app.",
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
