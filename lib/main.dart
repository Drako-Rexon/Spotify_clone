import 'package:flutter/material.dart';
import 'package:spotify_clone/root_app.dart';
import 'root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Clone',
      home: Home(),
    );
  }
}
