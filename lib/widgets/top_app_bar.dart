import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Row(
            children: [
              SizedBox(width: 20), // Add spacing using SizedBox
              SvgPicture.asset(
                'lib/assets/icons/Bulb.svg',
                height: 20.0,
                width: 20.0,
              ),
              SizedBox(width: 20), // Add spacing using SizedBox
              Text(
                "100",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 20), // Add spacing using SizedBox
              Spacer(),
              Icon(Icons.bolt),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
