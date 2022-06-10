import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';

class HeadHomePage extends StatelessWidget {
  const HeadHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Good Evening",
          style: TextStyle(
            fontSize: 20,
            // fontFamily: 'CircularStd',
            fontWeight: FontWeight.bold,
            color: AppColor.spotifyWhite,
          ),
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
                Icons.blender_outlined,
                color: AppColor.spotifyWhite,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
