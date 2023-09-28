import 'package:flutter/material.dart';

class Listvi extends StatelessWidget {
  const Listvi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: 'navigaiton menu',
          ),
          title: const Text("Listview"),
        ),
        body: ListView(children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text(
              "jexsen",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("apalahdlid lorem ipsub"),
          )
        ]));
  }
}
