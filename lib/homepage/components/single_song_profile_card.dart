import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class SingleCardWithPlayerProfile extends StatelessWidget {
  const SingleCardWithPlayerProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResSize.screenWidth - 40,
      child: Column(
        children: [
          // * Profile
          Row(
            children: [
              CircleAvatar(
                radius: 26,
                child: Image(
                  image: AssetImage('assets/images/home/Pic.png'),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegularText(
                    text: "NEW RELEASE FROM",
                    textSize: 9,
                  ),
                  SizedBox(height: 5),
                  RegularText(
                    text: 'Dan Lewis',
                    textSize: 19,
                    isBold: true,
                  ),
                ],
              ),
            ],
          ),
          // * Music Card
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: AppColor.lightGrey,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(image: AssetImage('assets/images/home/Pic-1.png')),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegularText(
                            text: "Hurtless (Acoustic)",
                            isBold: true,
                            textSize: 13,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              RegularText(text: "Single"),
                              SizedBox(width: 5),
                              Icon(
                                Icons.circle,
                                color: AppColor.spotifyWhite,
                                size: 5,
                              ),
                              SizedBox(width: 5),
                              RegularText(text: "Dean Lewis"),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: AppColor.spotifyWhite,
                          ),
                          Icon(
                            Icons.circle,
                            color: AppColor.spotifyWhite,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
