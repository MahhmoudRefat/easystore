import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key,this.onTap,required this.button_name});
  String button_name;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
        ),
        width: double.infinity,
        height: 60,
        child: Center(child: Text(button_name,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
