import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/constants.dart';

import '../cubits/add_note_cubit/add_note__cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive ;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      backgroundColor: Colors.white,
      radius: 38,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    )       :CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          scrollDirection:Axis.horizontal ,
          itemCount: ColorsList.length,itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
            onTap:(){
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).getColor=ColorsList[index];
              setState(() {

              });
            } ,
              child: ColorItem(isActive:  currentIndex==index, color: ColorsList[index],)),
        );
      }),
    );
  }
}
