import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_textfeild.dart';

class EditBodyView extends StatelessWidget {
  const EditBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 16,),
          CustomAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(height: 24),
          CustomTextfeild(text: 'Title'),
          SizedBox(height: 24),
          CustomTextfeild(text: 'Content', maxLines: 6),
        ],
      ),
    );
  }
}
