import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class HomeCarouselTypeTwo extends StatelessWidget {
  const HomeCarouselTypeTwo({
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
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: RegularText(
            text: heading,
            textSize: 18,
            isBold: true,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 240,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                // * This is only for the first card of the carousel
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(listing[index]["img"]),
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          listing[index]["title"],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColor.spotifyWhite,
                            fontSize: 13,
                          ),
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
