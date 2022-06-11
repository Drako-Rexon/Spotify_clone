import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/redirecting_page/redirecting.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarBrightness: Brightness.light,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Clone',
      home: Home(),
    );
  }
}
