import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';
import 'package:spotify_clone/components/sample_song_json.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';
import 'package:spotify_clone/library_page/_components/sorting_button.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool sorted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.spotifyBlack,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: AppColor.spotifyBlack,
        shadowColor: Colors.black,
        elevation: 4,
        titleSpacing: 0,
        bottom: AppBarCustomForSpotify(),
      ),
      backgroundColor: AppColor.spotifyBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 10,
              ),
              width: ResSize.screenWidth - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.download_sharp,
                        color: AppColor.spotifyWhite,
                      ),
                      RegularText(
                        text: "Most recent",
                        textSize: 12,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.crop_square,
                    color: AppColor.spotifyWhite,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ResSize.screenWidth,
              height: 1000,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: libraryTiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      // top: 20,
                      // bottom: 20,
                      left: 10,
                      right: 10,
                    ),
                    height: 100,
                    // color: AppColor.spotifyGreen,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(0),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/home/Art-1.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      extendBody: false,
    );
  }

  // ! END OF MAIN CODE

  PreferredSize AppBarCustomForSpotify() {
    return PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 6),
                      child: Icon(
                        Icons.ac_unit_sharp,
                        color: AppColor.spotifyWhite,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: RegularText(
                        text: "Your Library",
                        textSize: 18,
                        isBold: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 33,
                      color: AppColor.spotifyWhite,
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.add,
                      size: 35,
                      color: AppColor.spotifyWhite,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  sorted = !sorted;
                });
              },
              child: Row(
                children: [
                  SizedBox(width: 10),
                  sorted
                      ? Container(
                          width: 10,
                          height: 10,
                          color: Colors.white,
                        )
                      : Container(),
                  SortingButtons(
                    title: 'Playlists',
                  ),
                  SizedBox(width: 16),
                  SortingButtons(
                    title: 'Albums',
                  ),
                  SizedBox(width: 16),
                  SortingButtons(
                    title: 'Downloaded',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}



//! This is for storing extra code, to not to write again after mistake
                  // ListTile(
                  //   minVerticalPadding: 45,
                  //   tileColor: Colors.grey,
                  //   selectedTileColor: Colors.red, // ? For debugging or testing
                  //   leading: Container(
                  //     height: 90,
                  //     width: 90,
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       image: DecorationImage(
                  //         image: AssetImage("assets/images/home/Art-1.png"),
                  //       ),
                  //     ),
                  //   ),
                  // )