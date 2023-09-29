import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listview(),
    );
  }));
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("ListView")),
      ),
      body: ListView(
        children: [
          Card(                 //wrap with widget
            color: Colors.green,
             child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
              ),
              title: Text("Akshay"),
              subtitle: Text("9633014998"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.red,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
              ),
              title: Text("Akshay"),
              subtitle: Text("9633014998"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            shadowColor: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
              ),
              title: Text("Akshay"),
              subtitle: Text("9633014998"),
              trailing: Icon(Icons.call),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage:
              AssetImage("assets/icons/pexels-stefan-stefancik-91227.png"),
            ),
            title: Text("Akshay"),
            subtitle: Text("9633014998"),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
