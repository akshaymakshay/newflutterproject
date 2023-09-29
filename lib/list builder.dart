import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: List_builder(),
        ),
  ));
}

class List_builder extends StatelessWidget {
  var name = ["Akshay", "Ram", "Anu"];
  var phone = ["9633014998", "7665445342", "09874543432"];
  var Image = [
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png",
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png",
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png"
  ];
  var same_color = [100, 200, 300];
  //var color = [Colors.yellow, Colors.green, Colors.deepPurpleAccent,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List builder"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                color: Colors.red[same_color[index]],
                //color: color[index],
                child: ListTile(
                title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
            leading: CircleAvatar(
            backgroundImage: AssetImage(Image[index]),
            ),
            ),
            );
            },

          itemCount: name.length),
    );
  }
}


