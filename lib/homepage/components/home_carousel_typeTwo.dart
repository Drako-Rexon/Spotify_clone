import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class HomeCarouselTypeTwo extends StatelessWidget {
  HomeCarouselTypeTwo({
    Key? key,
    this.heading = "",
    this.head = true,
    required this.listing,
  }) : super(key: key);
  final String heading;
  final List listing;
  final bool head;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        head
            ? Container(
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
              )
            : Container(),
        Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          height: 200,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
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
                      children: [
                        Text(
                          listing[index]["title"],
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
              );
            },
          ),
        ),
      ],
    );
  }
}
