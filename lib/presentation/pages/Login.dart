import 'package:concept/presentation/pages/Register.dart';
import 'package:concept/presentation/widgets/CustomButton.dart';
import 'package:concept/presentation/widgets/InputForm.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id ="login_screen";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String emailErrorText ="";
  String passwordErrorText = "";

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.only(right: 30.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 300,
                width: width,
                margin: EdgeInsets.only(top: 100,bottom: 40),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              InputFormField(
                controller: _emailController,
                hintText: "Email address ...",
                errorText: emailErrorText,
                icon: IconButton(
                  icon: Icon(Icons.mail),
                  onPressed: null,
                ),
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
              ), InputFormField(
                controller: _passwordController,
                hintText: "Password ...",
                errorText: passwordErrorText,
                icon: IconButton(
                  icon: Icon(Icons.lock),
                  onPressed: () => obscureText ? setState((){obscureText = false;}) : setState((){obscureText = true;}),
                ),
                inputType: TextInputType.text,
                obscureText: obscureText,
                inputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                name: "Sign In",
                onPressed: (){

                },
                color: Colors.orange,
                textColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(text: TextSpan(
                  text: "Don'\t have an account ?",
                  style: TextStyle(color: Colors.orange,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic),
                  children: [
                    TextSpan(
                      text: "  Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),
                      recognizer: TapGestureRecognizer() ..onTap = () => Navigator.pushNamed(context, Register.id),
                    )
                  ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
