import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/top_app_bar.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: ListView(
        children: [
          Text("Why are child rights important?\nChild rights are like super special rules that are meant to protect and take care of kids like you! They make sure you have things like a safe home, yummy food, a chance to learn and play, and most importantly, lots of love and care. These rules are super important because they help make sure all kids grow up happy, healthy, and full of joy, just like you deserve! So, remember, child rights are like your superhero cape, keeping you safe and happy every day.Sure! Here are some multiple-choice questions and scenarios about child rights (Indian version) that are suitable for 6-year-olds, along with answers and short stories:")
        ],
      ),
    );
  }
}
