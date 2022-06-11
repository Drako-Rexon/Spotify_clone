import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/homepage/homepage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeTab = 0;
  List navIconOn = [
    // NavIcons.state_on_2,
    // NavIcons.state_on_1,
    // NavIcons.state_on
    Icons.home,
    Icons.home,
    Icons.home,
  ];
  List navIconOff = [
    // NavIcons.state_off_2,
    // NavIcons.state_off_1,
    // NavIcons.state_off
    Icons.home,
    Icons.home,
    Icons.home,
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
      ],
    );
  }

  Widget getNav() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.spotifyBlack,
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(navIconOn.length, (index) {
          return IconButton(
            icon: Icon(
              activeTab == index ? navIconOff[index] : navIconOn[index],
              color: AppColor.spotifyWhite,
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
