import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({super.key, required this.text,  this.maxLines =1, this.onsaved, this.onChange});
final String text ;
final int maxLines;
final void Function(String?)? onsaved;
final  Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved ,
      onChanged: onChange,
      validator:(value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }
      } ,
      cursorColor: Colors.greenAccent,
      maxLines: maxLines,
        textInputAction: TextInputAction.done ,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.greenAccent),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
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
