import 'package:flutter/material.dart';
import 'package:notesapp/widjets/custom_textfeild.dart';

class AddNoteButtom extends StatelessWidget {
  const AddNoteButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 36,
              left: 16,
              right: 16,
            ),
            child: CustomTextfeild(text: 'Title')
          ),
          Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
              ),
              child: CustomTextfeild(text: 'Content',maxLines: 7,)

          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 120,
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))
                ),
                child: Text(
                  'Add', style: TextStyle(color: Colors.black),),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
