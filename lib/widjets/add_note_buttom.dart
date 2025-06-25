import 'package:flutter/material.dart';

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
            child: TextField(
              cursorColor: Colors.greenAccent,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(color: Colors.greenAccent),
                enabledBorder: BuildBorder(),
                focusedBorder: BuildBorder(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor:Colors.greenAccent,
              minLines: null,
              maxLines: 7,
              textInputAction: TextInputAction.done, // ✅ ده يحل المشكلة
              decoration: InputDecoration(
                labelText: 'Content',
                labelStyle: TextStyle(color: Colors.greenAccent),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12), // 👈 padding بسيط
                enabledBorder: BuildBorder(),
                focusedBorder: BuildBorder(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )

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
                child: Text('Add'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              );
  }
}
