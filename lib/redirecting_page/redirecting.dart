import 'package:flutter/material.dart';
import 'package:spotify/Search/search.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/res_size.dart';
import 'package:spotify/components/variables.dart';
import 'package:spotify/homepage/homepage.dart';
import 'package:spotify/library_page/library.dart';

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);
  const Home({super.key});
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
      backgroundColor: const Color.fromARGB(255, 42, 154, 109),
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
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            sBlack,
            sBlack.withOpacity(0.6),
            sBlack.withOpacity(0.2),
            const Color.fromARGB(0, 1, 14, 0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.topCenter,
        ),
      ),
      width: ResSize.screenWidth,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext ctx, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
                children: [
                  Image.asset(
                    activeTab == index ? navIconEn[index] : navIconDis[index],
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    navIconName[index],
                    style: const TextStyle(color: sWhite),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
