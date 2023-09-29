import 'dart:async';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/main.dart';

import 'Login.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Registration(),
//   ));
// }

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationState();
}

class RegistrationState extends State<Registration> {
  @override
  // void initState() {
  //   Timer(Duration(seconds: 1),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
  //   },);
  //   super.initState();
  // }
  bool password = true;
  bool confirmpassword = true;


  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.teal,

        //indigo,teal,deepOrange,purple

        title: Center(child: Text("REGISTRATION")),
      ),
      body: Container(


        // decoration: BoxDecoration(
        //   gradient: LinearGradient(colors: [
        //     Colors.redAccent,
        //     Colors.green,
        //     Colors.yellow,
        //   ],begin: Alignment.bottomCenter,end: Alignment.centerLeft)),
        // image: DecorationImage(
        //     image: NetworkImage(
        //         "https://images.unsplash.com/photo-1694682845789-56788fccf4dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=700&q=60"),
        //     fit: BoxFit.fill)

        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "REGISTRATION",
                style: TextStyle(fontSize: 30, color: Colors.teal),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Name",
                prefixIcon: Icon(Icons.person),
                labelText: "Enter your Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, left: 100),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.add),
                    labelText: "Enter your Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, left: 100),
              child: TextField(
                obscureText: password,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    labelText: "Enter your Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (password) {
                            password = false;
                          } else {
                            password = true;
                          }
                        });
                      },
                      icon: Icon(password == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, left: 100),
              child: TextField(
                obscureText: confirmpassword,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Confirm Passowrd",
                    prefixIcon: Icon(Icons.password_sharp),
                    labelText: "Confirm your Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (confirmpassword) {
                            confirmpassword = false;
                          } else {
                            confirmpassword = true;
                          }
                        });
                      },
                      icon: Icon(confirmpassword == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  child: Text(
                    "REGISTER",
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Already have an Account?",
                    style: TextStyle(color: Colors.teal)))
          ],
        )),
      ),
    );
  }
}
