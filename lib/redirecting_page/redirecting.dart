import 'package:flutter/material.dart';
import 'package:spotify/Search/search.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/res_size.dart';
import 'package:spotify/components/variables.dart';
import 'package:spotify/homepage/homepage.dart';
import 'package:spotify/library_page/library.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeTab = 0;
  List<String> navIconDis = [
    homeIconDis,
    searchIconDis,
    libraryIconDis,
  ];
  List<String> navIconName = [
    "Home",
    "Search",
    "Library",
  ];
  List<String> navIconEn = [
    homeIconEn,
    searchIconEn,
    libraryIconEn,
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
      children: const [HomePage(), SearchPage(), LibraryPage()],
    );
  }

  Widget getNav() {
    return SizedBox(
      height: 130,
      width: ResSize.screenWidth,
      child: Row(
        children: List.generate(navIconEn.length, (index) {
          return Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  Image.asset(
                    activeTab == index ? navIconEn[index] : navIconDis[index],
                    height: 30,
                  ),
                  Text(
                    navIconName[index],
                    style: const TextStyle(color: sWhite),
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            ),
          );
        }),
      ),
    );
  }
}
