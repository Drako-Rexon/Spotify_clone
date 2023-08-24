/*
 * figmafile - https://www.figma.com/file/crFVGv2cBEhaBmqnB8PG0G/SPOTIFY-MOBILE-APP-(Community)?type=design&node-id=0-1&t=3iIMowevwMxxHveS-0
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/redirecting_page/redirecting.dart';

void main() {
  // ? This is for the chaging theme of status bar while app is running
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: sGreen),
      title: 'Spotify',
      home: const Home(),
    );
  }
}
