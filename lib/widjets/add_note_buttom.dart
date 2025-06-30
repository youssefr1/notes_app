import 'package:flutter/material.dart';
import 'package:notesapp/widjets/custom_buttom.dart';
import 'package:notesapp/widjets/custom_textfeild.dart';

class AddNoteButtom extends StatelessWidget {
  const AddNoteButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8,),
              CustomTextfeild(text: 'Title'),
              SizedBox(height: 16),
              CustomTextfeild(text: 'Content', maxLines: 7),
              SizedBox(height: 95,),
            CustomButtom(),

            ],
          ),
        ),
      ),
    );
  }
}
