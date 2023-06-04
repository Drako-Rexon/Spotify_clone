import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class SingleCard extends StatefulWidget {
  const SingleCard({Key? key}) : super(key: key);

  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    bool fav = false;
    return SizedBox(
      width: ResSize.screenWidth - 40,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: AppColor.lightGrey.withOpacity(0.45),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(image: AssetImage('assets/images/home/Pic-1.png')),
            Container(
              height: 150,
              width: 200,
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                              RegularText(
                                text: "Dean Lewis",
                                textColor:
                                    AppColor.spotifyWhite.withOpacity(0.7),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Flex(
                    direction: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (fav) {
                                  fav = false;
                                } else {
                                  fav = true;
                                }
                                // fav = !fav;
                              });
                            },
                            icon: fav
                                ? Icon(
                                    Icons.favorite,
                                    color: AppColor.spotifyWhite,
                                    size: 34,
                                  )
                                : Icon(
                                    Icons.favorite_outline,
                                    color: AppColor.spotifyWhite,
                                    size: 34,
                                  ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.spotifyWhite,
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 30,
                                  color: AppColor.spotifyBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
