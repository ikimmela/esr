import 'package:assigned/pages/auth/login.dart';
import 'package:assigned/pages/auth/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class regscreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController passwordconfirmcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('registerar'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
                labelText: "email", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
                labelText: "password", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: passwordconfirmcontroller,
            decoration: InputDecoration(
                labelText: "confirm password", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () async {
                if (emailcontroller.text == "" ||
                    passwordcontroller.text == "") {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('all data must be filled'),
                    backgroundColor: Colors.grey,
                  ));
                } else if (passwordcontroller.text !=
                    passwordconfirmcontroller.text) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('password don`t match '),
                    backgroundColor: Colors.grey,
                  ));
                } else {
                  User? result = await AuthService().register(
                      emailcontroller.text, passwordconfirmcontroller.text);
                  if (result != null) {
                    print("sucess");
                    print(result.email);
                  }
                }
              },
              child: Text(
                "submitt",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            child: Text('alredyhave account'),
          )
        ],
      ),
    );
  }
}
