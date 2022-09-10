import 'package:flutter/material.dart';
import 'package:spotify_clone/_components/colors.dart';
import 'package:spotify_clone/_components/res_size.dart';
import 'package:spotify_clone/_components/sample_song_json.dart';
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
      appBar: AppBar(
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
                      SizedBox(width: 10),
                      RegularText(
                        text: "Most recent",
                        textSize: 12,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.square,
                    color: AppColor.spotifyWhite,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ResSize.screenWidth,
              height: libraryTiles.length * 90,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: libraryTiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // color: Colors.red,
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(libraryTiles[index]["img"]),
                              //  == null
                              //     ? NetworkImage(
                              //         'https://www.cleanpng.com/free/no-image.html')
                              //     : NetworkImage('https://www.cleanpng.com/free/no-image.html'),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RegularText(
                              text: libraryTiles[index]["title"],
                              textSize: 15,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.download,
                                  color: AppColor.spotifyGreen,
                                  size: 16,
                                ),
                                SizedBox(width: 3),
                                RegularText(
                                  text: libraryTiles[index]["type"],
                                  textSize: 10,
                                ),
                                SizedBox(width: 3),
                                Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 4,
                                ),
                                SizedBox(width: 3),
                                RegularText(
                                  text: libraryTiles[index]["songNo"] == null
                                      ? libraryTiles[index]["Artist"]
                                      : libraryTiles[index]["songNo"],
                                  textSize: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              // color: Colors.red,
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              height: 70,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColor.lightGrey,
                    radius: 70,
                    child: Image(
                      image: NetworkImage('https://www.clipartmax.com/png/middle/17-171655_how-to-set-use-add-button-white-svg-vector-add-white-icon.png'),
                    ),
                  ),
                  // ),

                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText(
                        text: "Add artists",
                        textSize: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // extendBody: false,
    );
  }

  // ! END OF MAIN CODE

  PreferredSize AppBarCustomForSpotify() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
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
                      textSize: 16,
                      isBold: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
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
                  title: 'Tap ME',
                ),
                SizedBox(width: 16),
                SortingButtons(
                  title: 'Tap ME',
                ),
                SizedBox(width: 16),
                SortingButtons(
                  title: 'Tap ME',
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