import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';
import 'package:spotify_clone/homepage/components/card_home_top_page.dart';
import 'package:spotify_clone/homepage/components/head_home_page.dart';
import 'package:spotify_clone/homepage/components/row_card_home_top.dart';

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
      body: SafeArea(
        child: Stack(
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
            Column(
              children: [
                SizedBox(height: 30),
                HeadHomePage(),
                SizedBox(height: 5),
                RowCardHomeTop(),
                SizedBox(height: 10),
                RowCardHomeTop(),
                SizedBox(height: 10),
                RowCardHomeTop(),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
