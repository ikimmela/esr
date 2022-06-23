import 'package:assigned/fire_store/db.dart';
import 'package:assigned/homepage.dart';
import 'package:assigned/pages/auth/login.dart';
import 'package:assigned/pages/auth/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

//import 'package:assigned/auth/login.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const mainapp());
}

class mainapp extends StatelessWidget {
  const mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'fire store',
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: StreamBuilder(builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // return regscreen();
            return dbtut(snapshot.data);
          }
          return regscreen();
        })

        // StreamBuilder(stream: AuthService().firebaseAuth.authstatechanges(),

        );
  }
}
