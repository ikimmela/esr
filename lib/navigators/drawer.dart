import 'package:assigned/homepage.dart';
import 'package:assigned/pages/info/aboutus.dart';
import 'package:assigned/pages/setting.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class hdrawer extends StatefulWidget {
  const hdrawer({Key? key}) : super(key: key);

  @override
  State<hdrawer> createState() => _hdrawerState();
}

class _hdrawerState extends State<hdrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white60,
  );
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'HOMEPAGE',
            baseStyle: (myTextStyle),
            selectedStyle: (myTextStyle),
            colorLineSelected: Colors.blueGrey,
          ),
          homepage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: myTextStyle,
            selectedStyle: TextStyle(),
            colorLineSelected: Colors.blueGrey,
            name: 'ABOUT US ',
          ),
          aboutus()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: myTextStyle,
            selectedStyle: TextStyle(),
            name: 'setting ',
            colorLineSelected: Colors.blueGrey,
          ),
          setting()),
    ];
  }

  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.black54,
      initPositionSelected: 0,
      slidePercent: 10.0,
      contentCornerRadius: 25,
    );
  }
}
