import 'package:assigned/product/box.dart';
import 'package:flutter/material.dart';

class productlist extends StatelessWidget {
  productlist({Key? key}) : super(key: key);
 final List _product = [
    '1',
    '2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:_product.length,
        itemBuilder: ((context, index) {
        return box(childtext: _product[index], childprice: _product[index],);
      }))
    );
  }
}