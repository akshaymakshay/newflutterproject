import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_custom(),
  ));
}

class Listview_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview_Custom"),
        ),
        body: Container(
            child: ListView.custom(
                scrollDirection: Axis.vertical,
                childrenDelegate: SliverChildListDelegate([
                  Card(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text("Arya"),
                      subtitle: Text("fliutter"),
                    ),
                  ),
                  Card(
                      child: ListTile(
                    title: Text("Arya"),
                    subtitle: Text("fliutter"),
                  ))
                ]))));
  }
}
