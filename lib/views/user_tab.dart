import 'package:flutter/material.dart';
import 'package:rights_quest/widgets/settings.dart';

class UserTab extends StatelessWidget {
  const UserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(15),

      child: ListView(
        children: [
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(10),
              border: Border.all(
            color: Colors.black, // Set the border color here
              width: 2.0, // Set the border width here
            ),
      ),
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
          ),

          SizedBox(height: 10),
          Settings(settingName: "Settings",),

          SizedBox(height: 10),
          Settings(settingName: "Language",),

          SizedBox(height: 10),
          Settings(settingName: "Theme Mode",),
        ],

      ),
    );
  }
}
