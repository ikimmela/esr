import 'package:flutter/material.dart';

class box extends StatelessWidget {
  // const box({Key? key}) : super(key: key);
  final String childtext;
  final int childprice;
  box({required this.childtext, required this.childprice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 20.0,
        color: Colors.grey[300],
        child: Text(childtext),
      ),
    );
  }
}
