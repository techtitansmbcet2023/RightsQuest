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
              VerticalDivider(
                width: 20,
                thickness: 0,
              ),
              SvgPicture.asset(
                'lib/assets/icons/Bulb.svg',
                height: 20.0, // Set the desired height
                width: 20.0,  // Set the desired width
              ),
              VerticalDivider(
                width: 20,
                thickness: 0,
              ),
              Text("100", style: TextStyle(fontSize: 20),),
              VerticalDivider(
                width: 20,
                thickness: 2,
              ),
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



