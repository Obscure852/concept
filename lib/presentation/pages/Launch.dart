import 'package:concept/presentation/pages/Login.dart';
import 'package:concept/presentation/pages/Register.dart';
import 'package:concept/presentation/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class Launch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 30.0, left: 30.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/screen_1.jpg"),
            fit: BoxFit.cover,
          )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: width,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            CustomButton(
              name: "Sign In",
              color: Colors.greenAccent,
              onPressed: (){
                Navigator.pushReplacementNamed(context, Login.id);
              },
              textColor: Colors.black,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomButton(
              name: "Sign Up",
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushReplacementNamed(context, Register.id);
              },
            ), SizedBox(
              height: 10.0,
            ),
            CustomButton(
              name: "Sign in As Guest",
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushReplacementNamed(context, Register.id);
              },
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
