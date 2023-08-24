import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/res_size.dart';
import 'package:spotify/components/sample_song_json.dart';
import 'package:spotify/components/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  int activeMenu2 = 0;
  List<Color> homeGradientTop = [
    homeTopGradient1.withOpacity(0.1),
    homeTopGradient2.withOpacity(0.2),
    homeTopGradient3.withOpacity(0.2),
    homeTopGradient4.withOpacity(0.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: ResSize.screenHeight,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.25,
                  colors: [
                    homeGradientTop[0].withOpacity(1),
                    homeGradientTop[1].withOpacity(0.6),
                    homeGradientTop[2].withOpacity(0.3),
                    homeGradientTop[3].withOpacity(0.1),
                  ],
                ),
              ),
            ),
            Container(
              height: ResSize.screenHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    homeGradientTop[0].withOpacity(0.4),
                    homeGradientTop[1].withOpacity(0.05),
                    homeGradientTop[2].withOpacity(0),
                    homeGradientTop[3].withOpacity(0),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 55, bottom: 10, left: 8),
                  child: const HeadHomePage(text: "Good Afternoon"),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardHomeTopPage(
                            img: homeTopCardOne[index * 2]["img"],
                            text: homeTopCardOne[index * 2]["title"],
                          ),
                          CardHomeTopPage(
                            img: homeTopCardOne[(index * 2) + 1]["img"],
                            text: homeTopCardOne[(index * 2) + 1]["title"],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    bottom: 20,
                  ),
                  child: ProfileCard(
                    imgAdd: 'assets/images/home/Pic.png',
                    artistName: 'Dan Lewis',
                    titlePart: "new release from",
                  ),
                ),
                const SingleCard(),
                const SizedBox(height: 10),
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
                ),
                HomeCarouselTypeTwo(
                  heading: "Your top mixes",
                  listing: homeCarouselTypeTwo2,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: ProfileCard(
                    imgAdd: 'assets/images/home/carousel5/1.png',
                    artistName: 'Kodaline',
                    titlePart: 'more like',
                  ),
                ),
                HomeCarouselTypeTwo(
                  head: false,
                  listing: homeCarouselTypeTwo3,
                ),
                HomeCarouselTypeTwo(
                  heading: "Uniquely yours",
                  listing: homeCarouselTypeTwo4,
                ),
                HomeCarouselTypeTwo(
                  heading: "Jump back in",
                  listing: homeCarouselTypeTwo5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
