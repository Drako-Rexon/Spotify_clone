import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'library.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      home: Home(),
    ),
  );
}

class BottomNavigationBarExample extends StatefulWidget {
  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExample();
}

class _BottomNavigationBarExample extends State<BottomNavigationBarExample> {
  PageController pControl = PageController();
  int currentInd = 0;
  var currentTab = [
    Home(),
    Search(),
    Library(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
