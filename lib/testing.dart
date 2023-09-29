import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Listbuilder(),
      );
    }));
}

class Listbuilder extends StatefulWidget {
  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  @override
  var name = ["anshad", "akshay", "amal", "jubair"];

  var phone = ["9744043830", "58599494994", "858449949499", "849849949"];

  // var color = [
  var id = ["mohammed","mohammed","mohammed"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text("List builder")),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: (Text(name[index])),
            subtitle: (Text(phone[index])),
            // leading: (CircleAvatar(
            //   backgroundImage: AssetImage(color[index]),
            // )),
            trailing: (Icon(Icons.call)),
          );
        },

        itemCount: name.length,
        separatorBuilder: (BuildContext context,int index) {
          return Card(
            child: ListTile(
              title: Text(id[index]),
            ),
          );
        },
      ),
    );
  }
}
