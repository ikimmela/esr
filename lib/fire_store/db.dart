import 'dart:html';

import 'package:assigned/fire_store/addnode.dart';
import 'package:assigned/fire_store/edit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dbtut extends StatelessWidget {
//  FirebaseFirestore firestore = FirebaseFirestore.instance;
  User user;
  dbtut(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('collection data'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.grey[200],
            elevation: 8,
            margin: EdgeInsets.all(12),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              title: Text(
                "add custumer information ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'add, edit ,delete ,user information ',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => add(user)));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => add(user)));
        },
      ),

//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ElevatedButton(onPressed: () {},
//               child: Text('add data'),
//               CollectionReference users =firestore.collection('users');

//               //addmethod create unique id
//               // await users.add({
//               //   'name':'abebe'

//               // });
//                //.set method
//                await users.doc("flutter").set({
//                 'mane ': 'ggic'
//                })

//               ),
// //get all data on a given db
//               ElevatedButton(onPressed: ()async{
//                 CollectionReference users = firestore.collection ('users');
//                ////////// viewing all users
//                 // QuerySnapshot allResults = await users.get();
//                 // allResults.docs.forEach((DocumentSnapshot result)
//                 // {
//                 //   print(result.data());
//                 // });
//                 ///////// viewing a single user info
//                 // DocumentSnapshot result = await users.doc('flutter123').get();
//                 // print(result.data());
//                 ///////// viewing z updated or changed fron firestore  info
//                 users.doc("flutter123").snapshots().listen((result)
//                 {
//                   print(result.data());
//                 });
//                 ////////sorting z data by age
//                 FirebaseFirestore.instance.collection('users').orderby('age',decending:true).get();
//                  //////// filtering data
//                 FirebaseFirestore.instance.collection('users').where('age',isgreaterthan:20 ).get();

//               },
//                child: Text('view db')),
//                ElevatedButton(onPressed: ()async{
//                 await firestore.collection('users').doc("flutterqwer").update({
//                   'name':'flutter firebase'
//                 });
//                },/////updating user data
//                 child: Text('update data')),
//                 ElevatedButton(onPressed: ()async{
//                   await firestore.collection('users').doc("flutter123").delete();
//                 },
//                  child: Text('update data'))

//             ]),
//       ),
    );
  }
}
