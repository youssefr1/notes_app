import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width ,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),color:  Colors.greenAccent
        ),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold ),
          ),
        ),
      ),
    );
  }
}
