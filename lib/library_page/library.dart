import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.spotifyBlack,
      appBar: AppBar(
        backgroundColor: AppColor.spotifyBlack,
        shadowColor: Colors.black,
        elevation: 4,
        titleSpacing: 0,
        leading: Icon(Icons.ac_unit_sharp),
        title: RegularText(
          text: "Your Library",
          textSize: 18,
          isBold: true,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.add,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Column(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: RegularText(text: "data"),
                  ),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(250),
        ),
      ),
    );
  }
}
