import 'package:flutter/material.dart';

class Settings extends StatefulWidget {

  final String settingName;
  const Settings({super.key, this.settingName = "Setting"});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black,width: 2)),

      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.settingName,style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w800,),),

              /*Switch(
                // This bool value toggles the switch.
                value: light,
                activeColor: Colors.red,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light = value;
                  });
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
