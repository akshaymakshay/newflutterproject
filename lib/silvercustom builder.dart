import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_custom(),
  ));
}

class Listview_custom extends StatelessWidget {
  var name = [
    "Arya",
    "Arya",
    "Arya",
    "Arya",
  ];
  var batch = ["Flutter", "Flutter", "Flutter", "Flutter"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview_Custom"),
        ),
        body:  ListView.custom(
                scrollDirection: Axis.vertical,
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  return Card(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text(name[index]),
                      subtitle: Text(batch[index]),
                    ),
                  );
                },
                  childCount: name.length
                ),
        ),

    );
  }
}
