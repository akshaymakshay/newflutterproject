import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Listview_sliver_builder(),
      );
    }
  ));
}

class Listview_sliver_builder extends StatelessWidget {
  var img = [
    "assets/icons/pexels-stefan-stefancik-91227.png",
    "assets/icons/pexels-stefan-stefancik-91227.png",
    "assets/icons/pexels-stefan-stefancik-91227.png",
    "assets/icons/pexels-stefan-stefancik-91227.png",
    "assets/icons/pexels-stefan-stefancik-91227.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(child: Text("GRID VIEW EG2"))),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Card(
              child: Image(
                image: AssetImage(img[index]),
              ),
            );
          },
        itemCount: img.length,
          ),
    );
  }
}
