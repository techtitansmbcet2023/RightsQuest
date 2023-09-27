import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/top_app_bar.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image(image: AssetImage('lib/assets/images/sketch_3_clipdrop-cleanup.jpeg')),
            
            Text("When selecting a name, consider the target audience and the app's overall mission. It's important to choose a name that is easy to remember, spell, and conveys a sense of empowerment and advocacy for children's rights. Additionally, check for trademark availability and domain name availability if you plan to have a website for your app.",softWrap: true,),
          ],
        ),
      ),
    );
  }
}
