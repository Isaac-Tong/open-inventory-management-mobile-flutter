import 'package:flutter/material.dart';
import 'package:openinventorymanagement/Login_Screen/login_screen.dart';
import 'inventory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginScreen()
    );
  }
}


