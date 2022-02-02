import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0, activeTab = 0;
  List navIcon = [
    FeatherIcons.home,
    FeatherIcons.search,
    FeatherIcons.book,
    FeatherIcons.settings,
  ];

  Widget getNav() {
    return Container(
      // alignment: BottomAppBar,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(navIcon.length, (index) {
            return IconButton(
              icon: Icon(
                navIcon[index],
                color:
                    activeTab == index ? const Color(0xFF1ed661) : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 2,
            right: 0,
          ),
          child: Icon(
            Icons.music_note,
            color: Color(0xFF1ed661),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(
            left: 0,
          ),
          // child: Image(
          // height: 500,
          // image: AssetImage('assets/images/spotify.png'),
          // ),
          child: Text(
            'Spotify',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: getNav(),
    );
  }
}
