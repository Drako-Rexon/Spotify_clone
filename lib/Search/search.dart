import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/Search/components/search_cards.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';
import 'package:spotify_clone/components/sample_song_json.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.spotifyBlack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 40),
                child: RegularText(
                  text: 'Search',
                  textColor: AppColor.spotifyWhite,
                  isBold: true,
                  textSize: 20,
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  height: 50,
                  width: ResSize.screenWidth - 30,
                  decoration: BoxDecoration(
                      color: AppColor.spotifyWhite,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: ResSize.screenWidth - 80,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextField(
                            dragStartBehavior: DragStartBehavior.start,
                            showCursor: true,
                            cursorColor: AppColor.spotifyBlack,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 34,
                                color: AppColor.spotifyBlack,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(
                                top: 12,
                                left: 10,
                              ),
                              hintText: " Artists, songs, or podcasts",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: RegularText(
                  text: "Your top genres",
                  isBold: true,
                  textSize: 14,
                ),
              ),
              SizedBox(height: 20),
              SearchCards(
                contHeight: ((topGenres.length) ~/ 2) * 120,
                costList: topGenres,
                count: (topGenres.length) ~/ 2,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: RegularText(
                  text: "Browse all",
                  isBold: true,
                  textSize: 14,
                ),
              ),
              SearchCards(
                contHeight: ((browseAll.length) ~/ 2) * 120,
                costList: browseAll,
                count: (browseAll.length) ~/ 2,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
