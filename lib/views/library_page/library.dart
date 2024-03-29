import 'package:flutter/material.dart';
import 'package:spotify/utils/colors.dart';
import 'package:spotify/utils/res_size.dart';
import 'package:spotify/data/sample_song_json.dart';
import 'package:spotify/utils/variables.dart';
import 'package:spotify/utils/widgets.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool sorted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sBlack,
        shadowColor: Colors.black,
        elevation: 4,
        titleSpacing: 0,
        bottom: appBarCustomForSpotify(),
      ),
      backgroundColor: sBlack,
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.download_sharp,
                        color: sWhite,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Most recent",
                        style: TextStyle(fontSize: 12, color: sWhite),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.square,
                    color: sWhite,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ResSize.screenWidth,
              height: libraryTiles.length * 90,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: libraryTiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
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
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              libraryTiles[index]["title"],
                              style:
                                  const TextStyle(fontSize: 15, color: sWhite),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.download,
                                  color: sGreen,
                                  size: 16,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  libraryTiles[index]["type"],
                                  style: const TextStyle(
                                      fontSize: 10, color: sWhite),
                                ),
                                const SizedBox(width: 3),
                                const Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 4,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  libraryTiles[index]["songNo"] ??
                                      libraryTiles[index]["Artist"],
                                  style: const TextStyle(
                                      fontSize: 10, color: sWhite),
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
                    backgroundColor: sLightGrey,
                    radius: 70,
                    child: Image(
                      image: AssetImage(addIcon),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add Artists",
                        style: TextStyle(fontSize: 15, color: sWhite),
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

  PreferredSize appBarCustomForSpotify() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 6),
                    child: Icon(
                      Icons.ac_unit_sharp,
                      color: sWhite,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Your Library",
                      style: TextStyle(
                        color: sWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 33,
                    color: sWhite,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.add,
                    size: 35,
                    color: sWhite,
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
                const SizedBox(width: 10),
                sorted
                    ? Container(
                        width: 10,
                        height: 10,
                        color: Colors.white,
                        child: const Icon(Icons.cancel_outlined),
                      )
                    : Container(),
                const SortingButtons(title: 'Playlists'),
                const SizedBox(width: 16),
                const SortingButtons(title: 'Albums'),
                const SizedBox(width: 16),
                const SortingButtons(title: 'Downloaded'),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
