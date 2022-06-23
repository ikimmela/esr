import 'package:assigned/fire_store/firestoreservice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class add extends StatefulWidget {
  User user;
  add(this.user);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController titleleControler = TextEditingController();
  TextEditingController full_nameControler = TextEditingController();
  TextEditingController family_sizeControler = TextEditingController();
  TextEditingController house_numberControler = TextEditingController();
  TextEditingController phone_numberControler = TextEditingController();
  TextEditingController kebeleControler = TextEditingController();
  TextEditingController email_adressControler = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: titleleControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "full_name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: full_nameControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "family_size",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: family_sizeControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "house_number ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: house_numberControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "phone_number ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: house_numberControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "kebele",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: kebeleControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              " email_adress",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email_adressControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (titleleControler.text == "" ||
                            kebeleControler.value == "" ||
                            house_numberControler.value == "" ||
                            family_sizeControler == "" ||
                            email_adressControler == "" ||
                            phone_numberControler == "" ||
                            house_numberControler == "" ||
                            full_nameControler == "") {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text("all fields are required")));
                        } else {
                          setState(() {
                            loading = true;
                          });
                          await firestoreService().insertNote(
                              titleleControler.text,
                              full_nameControler.text,
                              family_sizeControler.text,
                              house_numberControler.text,
                              phone_numberControler.text,
                              kebeleControler.text,
                              email_adressControler.text,
                              widget.user.uid);
                          setState(() {
                            loading = false;
                          });
                          Navigator.pop(context);
                        }
                      },
                      child: Text(
                        'add info',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
