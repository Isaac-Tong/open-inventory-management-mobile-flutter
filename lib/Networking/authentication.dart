import 'dart:convert';

import 'package:http/http.dart' as http;
import 'api_url.dart';

Future<http.Response> create_user(String user, String pass) async{
  String createUserUrl = apiURL + '/login/new';

  //realized that http.post needs to take in json for body
  var res = await http.post(createUserUrl, headers: {'Content-Type': 'application/json; charset=UTF-8'}, body: jsonEncode({'username': user, 'password': pass}));

  //Response should be the token
  return res;
}