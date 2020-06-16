import 'package:flutter/material.dart';
import 'package:openinventorymanagement/Test/qr_test.dart';
import '../Networking/authentication.dart';
import '../Shared_Preferences/store_token.dart';
import '../App_Screens/inventory.dart';
import '../Test/qr_test.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String username;
  String password;
  String token = 'Token: ';
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
                  'Create an account',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (String value) {
                    setState(() {
                      username = value;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (String value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
                SizedBox(height: 30),
                Card(
                  child: ListTile(
                    title: Text(
                        token
                    ),
                  ),
                ),
                SizedBox(height: 30),
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () async {
//                    try{
//                      var res = await create_user(username, password);
//                      //res.body has the token
//                      //We now want to store the token returned by backend to shared preferences database
//                      await storeToken(res.body);
//
//                      //Try to retrieve the token and display it to the token card
//                      String storedToken = await retrieveToken();
//
//                      setState(() {
//                        token = storedToken;
//                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QRTEST()),
                      );

//                    }catch(error){
//                      print('abc');
//                    }
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
