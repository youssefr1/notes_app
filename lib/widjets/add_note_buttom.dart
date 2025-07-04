import 'package:flutter/material.dart';
import 'package:notesapp/widjets/custom_buttom.dart';
import 'package:notesapp/widjets/custom_textfeild.dart';

class AddNoteButtom extends StatelessWidget {
  const AddNoteButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade900,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: SingleChildScrollView(child: AddNoteForm()),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
 String? title ,subtitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 8),
          CustomTextfeild(text: 'title',onsaved:(value){ title = value;},),
          SizedBox(height: 16),
          CustomTextfeild(text: 'Content', maxLines: 7,onsaved:(value){ subtitle = value;},),
          SizedBox(height: 95),
          CustomButtom(onTap: (){
            if(formKey.currentState!.validate()){
                formKey.currentState!.save();
            }else{
              autoValidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
        ],
      ),
    );
  }
}
