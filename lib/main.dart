import 'package:flutter/material.dart';
import 'package:spotify_clone/root_app.dart';
import 'root_app.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone',
      home: Home(),
    ),
  );
}
