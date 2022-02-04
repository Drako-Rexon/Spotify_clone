// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:spotify_clone/song_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getAppbody(),
    );
  }

  Widget getAppbody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: List.generate(songList1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          songList1[index],
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontFamily: 'Proxima Nova',
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  PreferredSize getAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Proxima Nova',
                  ),
                ),
                Icon(Icons.toc_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
