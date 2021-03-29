import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {

  CustomButton({this.name, this.textColor, this.color, this.onPressed});

  final String name;
  final Color textColor;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.white,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      onPressed: onPressed,
      child: Text("$name", style: TextStyle(color: textColor,),),
      color: color,
    );
  }
}
