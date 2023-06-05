import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/res_size.dart';
import 'package:spotify/components/sample_song_json.dart';
import 'package:spotify/components/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBlack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 40),
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 20,
                    color: sWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Container(
                  height: 50,
                  width: ResSize.screenWidth - 30,
                  decoration: BoxDecoration(
                      color: sWhite, borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: ResSize.screenWidth - 80,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TextField(
                            dragStartBehavior: DragStartBehavior.start,
                            showCursor: true,
                            cursorColor: sBlack,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 34,
                                color: sBlack,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
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
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Your top genres",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: sWhite,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SearchCards(
                contHeight: ((topGenres.length) ~/ 2) * 120,
                costList: topGenres,
                count: (topGenres.length) ~/ 2,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Browse all",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: sWhite,
                  ),
                ),
              ),
              SearchCards(
                contHeight: ((browseAll.length) ~/ 2) * 120,
                costList: browseAll,
                count: (browseAll.length) ~/ 2,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
