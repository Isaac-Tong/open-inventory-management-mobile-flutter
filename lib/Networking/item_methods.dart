import 'package:http/http.dart' as http;
import 'api_url.dart';

Future getItems() async {
  String url = apiURL + '/items';
  var item = await http.get('http://10.0.2.2:3000/items');
  return item.body;
}