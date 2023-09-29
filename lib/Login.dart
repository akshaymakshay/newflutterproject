import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/registration.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Login(),
//   ));
// }

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
            child: Text(
          "LOGIN", //style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "LOGIN PAGE",
                  style: TextStyle(fontSize: 30, color: Colors.teal),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.login),
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: TextField(
                  // obscureText: true,
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Passsord",
                      labelText: "Password",

                      //suffixIcon: Icon(Icons.visibility_off),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                            ;
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // TextButton(onPressed: () {}, child: Text("Forgot password?")),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    child: Text(
                      "LOGIN",
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                   },
                  child: Text(
                    "Not a user? Create a new Account",
                    style: TextStyle(color: Colors.teal  ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
