import 'package:flutter/material.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.imgAdd,
    required this.titlePart,
    required this.artistName,
  }) : super(key: key);
  final String imgAdd;
  final String titlePart;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage(imgAdd),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RegularText(
              text: titlePart.toUpperCase(),
              textSize: 9,
            ),
            SizedBox(height: 5),
            RegularText(
              text: artistName,
              textSize: 19,
              isBold: true,
            ),
          ],
        ),
      ],
    );
  }
}
