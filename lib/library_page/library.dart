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
        bottom: PreferredSize(
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
              Row(
                children: [
                  SizedBox(width: 10),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.only(left: 8, right: 8),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(color: AppColor.spotifyWhite),
                      ),
                    ),
                    onPressed: () {},
                    child: RegularText(
                      text: "Playlists",
                      textSize: 10,
                    ),
                  ),
                  SizedBox(width: 16),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.only(left: 8, right: 8),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(color: AppColor.spotifyWhite),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: RegularText(
                        text: "Playlists",
                        textSize: 10,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.only(left: 8, right: 8),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(color: AppColor.spotifyWhite),
                      ),
                    ),
                    onPressed: () {},
                    child: RegularText(
                      text: "Playlists",
                      textSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
