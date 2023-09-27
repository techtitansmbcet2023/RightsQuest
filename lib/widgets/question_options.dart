import 'package:flutter/material.dart';

class QuestionOption extends StatefulWidget {
  final String qoption;

  const QuestionOption({super.key, this.qoption="ERR"});

  @override
  State<QuestionOption> createState() => _QuestionOptionState();
}

class _QuestionOptionState extends State<QuestionOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(/*color: Colors.green,*/borderRadius: BorderRadius.circular(10),border: Border.all(
            color: Colors.black, // Set the border color here
            width: 2.0, // Set the border width here
          ),
          ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [

                Text(
                    widget.qoption,style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
