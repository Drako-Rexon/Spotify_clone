import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  final dynamic song;

  const AlbumPage({Key? key, this.song}) : super(key: key);


  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}
