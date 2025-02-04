import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({this.hintText, this.inputType = TextInputType.text, this.onChanged});
String? hintText ;
   TextInputType? inputType;
Function(String)? onChanged ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if (data!.isEmpty ){
          return 'field is requierd ';
        }
      },
      keyboardType: inputType?? TextInputType.text,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
