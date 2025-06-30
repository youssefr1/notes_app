import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_list_view.dart';
import 'custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 30,),
           CustomAppBar(text: 'Notes',icon: Icons.search,),

        Expanded(child: CustomListViewBuilder()),
        ],
      ),
    );
  }
}

