import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';

class SingleCardWithPlayerProfile extends StatelessWidget {
  const SingleCardWithPlayerProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResSize.screenWidth - 40,
      decoration: BoxDecoration(
          // color: Colors.teal,
          ),
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
                  // Text(
                  //   ,
                  //   style: TextStyle(
                  //     fontSize: 8,
                  //     fontWeight: FontWeight.w300,
                  //     color: AppColor.spotifyWhite,
                  //   ),
                  // ),
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
                Image(
                  image: AssetImage('assets/images/home/Pic-1.png'),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 10,
                    bottom: 10,
                    right: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegularText(
                            text: "Hurtless (Acoustic)",
                            isBold: true,
                            textSize: 16,
                          ),
                          Row(
                            children: [
                              RegularText(text: "Single"),
                              Icon(
                                Icons.circle,
                                color: AppColor.spotifyWhite,
                                size: 5,
                              ),
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

class RegularText extends StatelessWidget {
  const RegularText({
    Key? key,
    required this.text,
    this.textSize = 12,
    this.isBold = false,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String text;
  final double textSize;
  final bool isBold;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        color: textColor,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
