
import 'package:flutter/material.dart';
import '../Networking/item_methods.dart';
import '../Shared_Preferences/store_token.dart';



class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();

}

class _InventoryState extends State<Inventory> {


  @override
  void initState() {
    super.initState();
    initialState();

  }

  //Method to set initial state
  void initialState() async {
    String storedToken = await retrieveToken();
    setState(() {
      token = storedToken;
    });
  }

  List<Widget> cards = [
    Text('Hello'),
    Text('helllo2'),
    Text('hello3'),
    Text('hello3'),
    Text('hello3')
  ];

  int counter = 1;

  String token = 'Waiting';
  
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String response = await getItems();
          print(response);

          setState(() {
            counter++;
          });
        }
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text(token),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//ListView.builder(
//itemCount: counter,
//itemBuilder:  (context, index){
//return Card(
//child: ListTile(
//title: cards[index]
//)
//);
//}
//)