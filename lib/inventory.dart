
import 'package:flutter/material.dart';
import 'Networking/item_methods.dart';



class Inventory extends StatefulWidget {
  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  List<Widget> cards = [
    Text('Hello'),
    Text('helllo2'),
    Text('hello3'),
    Text('hello3'),
    Text('hello3')
  ];

  int counter = 1;
  
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
      body: ListView.builder(
        itemCount: counter,
        itemBuilder:  (context, index){
          return Card(
            child: ListTile(
              title: cards[index]
            )
          );
        }
      )
    );
  }
}
