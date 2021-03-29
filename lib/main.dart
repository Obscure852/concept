import 'package:concept/presentation/pages/Home.dart';
import 'package:concept/presentation/pages/Launch.dart';
import 'package:concept/presentation/pages/Login.dart';
import 'package:concept/presentation/pages/Register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Launch(),
      routes: {
        Login.id : (context) => Login(),
        Register.id : (context) => Register(),
        Home.id : (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}