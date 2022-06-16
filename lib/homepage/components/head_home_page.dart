import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/homepage/components/single_song_profile_card.dart';
import 'package:unicons/unicons.dart';

class HeadHomePage extends StatelessWidget {
  const HeadHomePage({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RegularText(
          text: "Good evening",
          isBold: true,
          textSize: 20,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.blender_outlined,
                color: AppColor.spotifyWhite,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.blender_outlined,
                color: AppColor.spotifyWhite,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                UniconsLine.cog,
                color: AppColor.spotifyWhite,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
