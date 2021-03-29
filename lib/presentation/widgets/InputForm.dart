import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {

  final IconButton icon;
  final String hintText;
  final String labelText;
  final String errorText;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,
        suffixIcon: icon,
        contentPadding: EdgeInsets.all(0)
      ),
      textInputAction: inputAction,
      keyboardType: inputType,
    );
  }

  InputFormField({this.controller,this.icon, this.hintText, this.labelText, this.errorText,
      this.inputAction, this.inputType, this.obscureText,});
}
