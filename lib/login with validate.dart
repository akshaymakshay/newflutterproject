import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/main.dart';
import 'package:newflutterproject/registration.dart';

import 'Myhomepage.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Login_validate(),
    ),
  ));
}

class Login_validate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_validate_state();
}

class Login_validate_state extends State<Login_validate> {
  @override
  GlobalKey<FormState> formkey = GlobalKey();
  bool password = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text("LOGIN PAGE",)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage(
                      "assets/icons/Hopstarter-Sleek-Xp-Basic-Home.256.png"),
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (uname) {
                      if (uname!.isEmpty ||
                          //uname!.contains("@gmail.com")
                          !uname.contains("@")       //exclamation mark frontil veran
                      //|| uname.contains(".")
                      )
                        return "Enter valid username";
                      else {
                        return null;
                      }
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: TextFormField(
                  obscureText: password,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {});
                            if (password) {
                              password = false;
                            } else
                              password = true;
                          },
                          icon: Icon(password == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (upassword) {
                    if (upassword!.isEmpty ||
                        upassword!.length<6) {
                      return "Enter valid Password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                             context,
                            MaterialPageRoute(
                                builder: (context) => Myhomepage()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
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
                    style: TextStyle(color: Colors.purple),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
