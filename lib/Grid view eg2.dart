import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gride_view_eg2(),
    );
  }));
}

class Gride_view_eg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text("GRID VIEW EG2")),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,   //
          crossAxisSpacing: 10,
          crossAxisCount: 5 ,
        ),
        children: [
          Card(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  radius: 20,
                ),
                Text("Gallery")
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  radius: 20,
                ),
                Text("Home")
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  radius: 20,
                ),
                Text("Home")
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  radius: 20,
                ),
                Text("Home")
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  radius: 20,
                ),
                Text("Home")
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  radius: 20,
                ),
                Text("Home")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
