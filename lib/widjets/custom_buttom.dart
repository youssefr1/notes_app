import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap,  this.isLoading = false});
final void Function()? onTap;
final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width ,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),color:  Colors.greenAccent
        ),
        child: Center(
          child:isLoading ? SizedBox(height: 35,child: CircularProgressIndicator(color: Colors.black,)) :Text(
            'Add',
            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold ),
          ),
        ),
      ),
    );
  }
}
