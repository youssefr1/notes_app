import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key, required this.text, required this.icon});
 final String text;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          text,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
       Spacer(),
       CustomSearchIcon(icon: icon),
      ],
    );
  }
}
