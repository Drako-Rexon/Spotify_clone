import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      )
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExample();
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