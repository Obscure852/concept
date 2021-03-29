import 'package:concept/presentation/widgets/CustomButton.dart';
import 'package:concept/presentation/widgets/InputForm.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  static String id = "register_screen";
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var _emailErrorText = "";
  var _passwordErrorText = "";

  bool _obscureText = false;

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Sign up", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
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
                margin: EdgeInsets.only(top: 40,bottom: 40),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              InputFormField(
                controller: _emailController,
                hintText: "Email Address ...",
                icon: IconButton(icon: Icon(Icons.mail), onPressed: null),
                errorText: _emailErrorText,
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
              ),
              InputFormField(
                controller: _passwordController,
                hintText: "Password ...",
                icon: IconButton(icon: Icon(Icons.lock), onPressed: null),
                errorText: _passwordErrorText,
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
                obscureText: _obscureText,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                onPressed: (){},
                color: Colors.orange,
                name: "Sign Up",
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
