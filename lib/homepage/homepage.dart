import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';
import 'package:spotify_clone/components/sample_song_json.dart';
import 'package:spotify_clone/homepage/components/card_home_top_page.dart';
import 'package:spotify_clone/homepage/components/head_home_page.dart';
import 'package:spotify_clone/homepage/components/home_carousel_typeOne.dart';
import 'package:spotify_clone/homepage/components/home_carousel_typeTwo.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';
import 'package:spotify_clone/homepage/components/single_song_profile_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  int activeMenu2 = 0;
  List<Color> homeGradientTop = [
    AppColor.homeTopGradient1.withOpacity(0.1),
    AppColor.homeTopGradient2.withOpacity(0.2),
    AppColor.homeTopGradient3.withOpacity(0.2),
    AppColor.homeTopGradient4.withOpacity(0.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: ResSize.screenHeight,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1.25,
                colors: [
                  AppColor.homeTopGradient1.withOpacity(1),
                  AppColor.homeTopGradient2.withOpacity(0.6),
                  AppColor.homeTopGradient3.withOpacity(0.3),
                  AppColor.homeTopGradient4.withOpacity(0.1),
                ],
              ),
            ),
          ),
          Container(
            height: ResSize.screenHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // center: Alignment.topLeft,
                // radius: 1.25,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.homeTopGradient1.withOpacity(0.4),
                  AppColor.homeTopGradient2.withOpacity(0.05),
                  AppColor.homeTopGradient3.withOpacity(0),
                  AppColor.homeTopGradient4.withOpacity(0),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 5,
                    left: 8,
                  ),
                  child: HeadHomePage(text: "Good Evening"),
                ),
                // SizedBox(height: 5),
                Column(
                  children: List.generate((homeTopCardOne.length / 2).toInt(),
                      (index) {
                    return Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      width: ResSize.screenWidth - 30,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardHomeTopPage(
                              img: homeTopCardOne[index * 2]["img"],
                              text: homeTopCardOne[index * 2]["title"]),
                          CardHomeTopPage(
                              img: homeTopCardOne[(index * 2) + 1]["img"],
                              text: homeTopCardOne[(index * 2) + 1]["title"]),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(height: 50),
                // * Card with profile and card
                SingleCardWithPlayerProfile(),
                SizedBox(height: 20),
                HomeCarouselTypeOne(
                  listing: homeCarouselTypeOne,
                  heading: "Discover something new",
                ),
                HomeCarouselTypeOne(
                  listing: homeCarouselTypeOne2,
                  heading: "Just the hits",
                ),
                HomeCarouselTypeTwo(
                  heading: "More of what you like",
                  listing: homeCarouselTypeTwo,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
