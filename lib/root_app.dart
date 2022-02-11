import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_clone/homepage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0, activeTab = 0;
  List navIcon = [
    Feather.home,
    Feather.search,
    Feather.book,
    Feather.settings,
  ];

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getNav(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomePage(),
        Center(
          child: Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Text(
            'Library',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Text(
            'Setting',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget getNav() {
    return Container(
      // alignment: BottomAppBar,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
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
}
