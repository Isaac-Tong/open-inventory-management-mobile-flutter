import 'package:shared_preferences/shared_preferences.dart';

//Save token to shared preferences
storeToken (String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', token);
}

//Retrieve the token from shared preferences
Future<String> retrieveToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}