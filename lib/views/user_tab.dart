import 'package:flutter/material.dart';

class UserTab extends StatelessWidget {
  const UserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8),

      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.person_2),

                    SizedBox(width: 30,),

                    Flexible(child: Text("Hello name ",softWrap: true,)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
