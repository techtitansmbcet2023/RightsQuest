import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/question_options.dart';
import 'package:rights_quest/widgets/top_app_bar.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Chapter 3: Cyber Bullying", // Title
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10,),

            Text("Mira had been excited about her new online gaming community. She made friends from around the world and enjoyed playing games with them. However, one day, things took an unexpected turn. She started receiving hurtful messages and threats from an unknown user within the gaming community.\nAt first, Mira didn't want to worry her friends, so she kept it a secret. But one day, Rohan noticed the change in her behavior. Mira did not seem like her cheerful and energetic self. Rohan was worried about Mira and decided to ask if something happened.",style: TextStyle(
              fontSize: 18,
            ),),
            
            SizedBox(height: 20,),
            
            Center(child: Text("Choose the best action for Mira",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
            ),)),

            SizedBox(height: 20,),

            QuestionOption(qoption: "Tell her friends what happened",),

            SizedBox(height: 10,),

            QuestionOption(qoption: "Ignore him`",),

            SizedBox(height: 10,),

            QuestionOption(qoption: "Tell nothing happened",),

            SizedBox(height: 10,),

            QuestionOption(qoption: "Tell him to mind his own business",),

            SizedBox(height: 8,),

          ],
        ),
      ),
    );
  }
}
