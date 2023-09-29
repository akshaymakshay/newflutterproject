import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        home: Gridview(),
      );
    }
  ));
}

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gridview"),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20),
          children: [
            Image(
                image: AssetImage(
                    "assets/icons/pexels-stefan-stefancik-91227.png")),
            Image(
                image: AssetImage(
                    "assets/icons/pexels-stefan-stefancik-91227.png")),
            Image(
                image: AssetImage(
                    "assets/icons/pexels-stefan-stefancik-91227.png")),
            Image(
                image: AssetImage(
                    "assets/icons/pexels-stefan-stefancik-91227.png")),
            Image(
                image: AssetImage(
                    "assets/icons/pexels-stefan-stefancik-91227.png")),
          ],
        ));
  }
}
