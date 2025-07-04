import 'package:flutter/material.dart';

import 'custom_notes_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    padding: EdgeInsets.symmetric(vertical: 16),
      itemBuilder:
          (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomNotesItem(),
          ),
    );
  }
}
