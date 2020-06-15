import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = 'a';
  String password = 'b';
  String testText = 'abcdefg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  testText,
                ),
                TextField(
                  onChanged: (String value){
                    username = value;
                    setState(() {
                      testText = username;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username'
                  ),
                ),
                SizedBox(
                  height: 30
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password'
                  ),
                ),
                SizedBox(
                    height: 30
                ),
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: (){
                  },
                  child: Text(
                    'Login'
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
