import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterproject/main.dart';

import 'Login.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("PULLINGO")),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image(
                image: AssetImage(
                    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png"),
                height: 200,
                width: 500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "TEAM PULLINGO",
              style: GoogleFonts.sacramento(
                textStyle: Theme.of(context).textTheme.headlineLarge,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "My new App",
              style: TextStyle(
                fontSize: 30, fontFamily: "Kanit",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
