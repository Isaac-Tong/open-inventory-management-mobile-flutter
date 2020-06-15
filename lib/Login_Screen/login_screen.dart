import 'package:flutter/material.dart';
import 'create_account.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username;
  String password;
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
                    setState(() {
                      username = value;
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
                  onChanged: (String value){
                    setState(() {
                      password = value;
                    });
                  },
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
                FlatButton(
                  color: Colors.brown,
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()));
                  },
                  child: Text(
                      'Create Account'
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
