import 'package:flutter/material.dart';
import 'package:spotify_clone/_components/colors.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class HomeCarouselTypeOne extends StatelessWidget {
  const HomeCarouselTypeOne({
    Key? key,
    required this.heading,
    required this.listing,
  }) : super(key: key);
  final String heading;
  final List listing;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 15,
          ),
          alignment: Alignment.centerLeft,
          child: RegularText(
            text: heading,
            textSize: 18,
            isBold: true,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 200,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return index == 0
                  ? Column(
                      // * This is only for the first card of the carousel
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(listing[index]["img"]),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                listing[index]["text0"],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColor.spotifyWhite,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  // * For rest of the cards in Carousel
                  : Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(listing[index]["img"])),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                listing[index]["title"],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColor.spotifyWhite,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    listing[index]["type"],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: AppColor.spotifyWhite,
                                        fontSize: 10),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.circle,
                                    color: AppColor.spotifyWhite,
                                    size: 4,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    listing[index]["album"],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: AppColor.spotifyWhite,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
            },
          ),
        ),
      ],
    );
  }
}
