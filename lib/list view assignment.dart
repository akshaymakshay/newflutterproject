import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listview_Assignment(),
    );
  }));
}

class Listview_Assignment extends StatefulWidget {
  @override
  State<Listview_Assignment> createState() => _Listview_AssignmentState();
}

class _Listview_AssignmentState extends State<Listview_Assignment> {
  @override
  var step = [
    "Step 1",
    "Step 2",
    "Step 3",
    "Step 4",
    "Step 5",
    "Step 6",
    "Step 7",
    "Step 8",
    "Step 9",
    "Step 10",
    "Step 11",
  ];
  var Due = [
    "Step 01 - Due in 1 Day",
    "Step 02 - Due in 2 Day",
    "Step 03 - Due in 3 Day",
    "Step 04 - Due in 4 Day",
    "Step 05 - Due in 5 Day",
    "Step 06 - Due in 6 Day",
    "Step 07 - Due in 7 Day",
    "Step 08 - Due in 8 Day",
    "Step 09 - Due in 9 Day",
    "Step 10 - Due in 10 Day",
    "Step 11 - Due in 11 Day",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("LIST VIEW")),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(step[index]),
            subtitle: Text(Due[index]),
            trailing: Icon(Icons.check_box_outline_blank),
          );
        },
        itemCount: step.length,
        separatorBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.description),
              title: Text("This is a very short description of the Step"),
              subtitle: Text("Description"),
            ),
          );
        },
      ),
    );
  }
}
