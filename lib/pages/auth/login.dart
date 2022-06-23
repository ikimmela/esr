import 'package:assigned/pages/auth/signup.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
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
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async {},
                child: Text(
                  "login",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => regscreen()));
              },
              child: Text('dont have an account'),
            ),
          ],
        ),
      ),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';

// class login extends StatelessWidget {
//   const login({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.brown[100],
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               height: 100,
//               width: 100,
//               // child: Image.asset('lib/images/tuteelogo.png', fit: BoxFit.contain,),
//             ),
//           ),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'Don\'t have an account?',
//                       style: TextStyle(color: Colors.brown, fontSize: 20),
//                     ),
//                     Text(
//                       ' SIGN UP',
//                       style: TextStyle(
//                           color: Colors.brown,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Container(
//                         color: Colors.brown[50],
//                         child: Row(
//                           children: <Widget>[
//                             Padding(
//                               padding: EdgeInsets.all(20),
//                               child: Icon(
//                                 Icons.accessibility,
//                                 color: Colors.brown,
//                               ),
//                             ),
//                             Text(
//                               ' E M A I L',
//                               style:
//                                   TextStyle(color: Colors.brown, fontSize: 20),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: 40, right: 40, top: 10, bottom: 10),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Container(
//                         color: Colors.brown[50],
//                         child: Row(
//                           children: <Widget>[
//                             Padding(
//                               padding: EdgeInsets.all(20),
//                               child: Icon(
//                                 Icons.lock,
//                                 color: Colors.brown,
//                               ),
//                             ),
//                             Text(' P A S S W O R D',
//                                 style: TextStyle(
//                                     color: Colors.brown, fontSize: 20))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 10),
//                   child: Text(
//                     'Forgot Password?',
//                     style: TextStyle(color: Colors.brown, fontSize: 20),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(
//                         left: 40, right: 40, top: 30, bottom: 20),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: Container(
//                         color: Colors.brown,
//                         child: Center(
//                           child: Text('S I G N  I N',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold)),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
//                   child: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 10, right: 5),
//                           child: SignInButton(
//                             Buttons.AppleDark,
//                             text: "Sign in",
//                             onPressed: () {},
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 5, right: 5),
//                           child: SignInButton(
//                             Buttons.Google,
//                             text: "Sign in",
//                             onPressed: () {},
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 5, right: 10),
//                           child: SignInButton(
//                             Buttons.Facebook,
//                             text: "Sign in",
//                             onPressed: () {},
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
