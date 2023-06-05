import 'package:flutter/material.dart';
import 'package:spotify/Search/search.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/res_size.dart';
import 'package:spotify/homepage/homepage.dart';
import 'package:spotify/library_page/library.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeTab = 0;
  List navIconOn = [
    Icons.home,
    Icons.home,
    Icons.home,
  ];
  List navIconOff = [
    Icons.home_outlined,
    Icons.home_outlined,
    Icons.home_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getNav(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        const HomePage(),
        const SearchPage(),
        LibraryPage(),
      ],
    );
  }

  Widget getNav() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            sBlack,
            sBlack.withOpacity(0.6),
            sBlack.withOpacity(0.2),
            const Color.fromARGB(0, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.topCenter,
        ),
      ),
      width: ResSize.screenWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(navIconOn.length, (index) {
          return IconButton(
            icon: Icon(
              activeTab == index ? navIconOn[index] : navIconOff[index],
              color: sWhite,
              size: 36,
            ),
            onPressed: () {
              setState(() {
                activeTab = index;
              });
            },
          );
        }),
      ),
    );
  }
}
