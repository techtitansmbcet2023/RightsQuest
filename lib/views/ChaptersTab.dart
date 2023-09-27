import 'package:flutter/material.dart';
import 'quiz_intro.dart';

class ChaptersTab extends StatelessWidget {
  const ChaptersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
              },

              borderRadius: BorderRadius.circular(10),
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent
                ),

                child:
                Container(
                  width: double.infinity,
                  height: 170,
                ),
              ),
            );
          }
      ),
    );


  }
}
