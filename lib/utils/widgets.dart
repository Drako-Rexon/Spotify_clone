import 'package:flutter/material.dart';
import 'package:spotify/utils/colors.dart';
import 'package:spotify/utils/res_size.dart';
import 'package:unicons/unicons.dart';

class CardHomeTopPage extends StatelessWidget {
  const CardHomeTopPage({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResSize.halfwidth - 20,
      height: 50,
      decoration: BoxDecoration(
        color: sLightGrey.withOpacity(0.45),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                  ),
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 70,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: sWhite,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: sWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.blender_outlined,
                color: sWhite,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.blender_outlined,
                color: sWhite,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                UniconsLine.cog,
                color: sWhite,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 15,
          ),
          alignment: Alignment.centerLeft,
          child: Text(
            heading,
            style: const TextStyle(
              fontSize: 18,
              color: sWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
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
                          margin: const EdgeInsets.all(10),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(listing[index]["img"]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                listing[index]["text0"],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: sWhite,
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
                          margin: const EdgeInsets.all(10),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(listing[index]["img"])),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listing[index]["title"],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: sWhite,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    listing[index]["type"],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: sWhite, fontSize: 10),
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    Icons.circle,
                                    color: sWhite,
                                    size: 4,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    listing[index]["album"],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: sWhite,
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

class HomeCarouselTypeTwo extends StatelessWidget {
  const HomeCarouselTypeTwo({
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
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 20,
                  right: 20,
                  bottom: 15,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  heading,
                  style: const TextStyle(
                    fontSize: 18,
                    color: sWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(),
        Container(
          margin: const EdgeInsets.only(
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
                    margin: const EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(listing[index]["img"]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listing[index]["title"],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: sWhite,
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
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titlePart.toUpperCase(),
              style: const TextStyle(
                fontSize: 9,
                color: sWhite,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              artistName,
              style: const TextStyle(
                fontSize: 19,
                color: sWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RowCardHomeTop extends StatelessWidget {
  const RowCardHomeTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // CardHomeTopPage(text: "Liked Songs1"),
        // CardHomeTopPage(text: "Liked Songs1"),
      ],
    );
  }
}

class SingleCard extends StatefulWidget {
  const SingleCard({Key? key}) : super(key: key);

  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResSize.screenWidth - 40,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: sLightGrey.withOpacity(0.45),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Image(image: AssetImage('assets/images/home/Pic-1.png')),
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
                          const Text(
                            "Hurtless (Acoustic)",
                            style: TextStyle(
                              fontSize: 13,
                              color: sWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              const Text(
                                "Single",
                                style: TextStyle(
                                  color: sWhite,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.circle,
                                color: sWhite,
                                size: 5,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Dean Lewis",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: sWhite.withOpacity(0.7),
                                ),
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
                                ? const Icon(
                                    Icons.favorite,
                                    color: sWhite,
                                    size: 34,
                                  )
                                : const Icon(
                                    Icons.favorite_outline,
                                    color: sWhite,
                                    size: 34,
                                  ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: sWhite,
                            ),
                            child: const Center(
                              child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 30,
                                  color: sBlack,
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

class SortingButtons extends StatefulWidget {
  const SortingButtons({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<SortingButtons> createState() => _SortingButtonsState();
}

class _SortingButtonsState extends State<SortingButtons> {
  bool onOrOff = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: onOrOff
            ? MaterialStateProperty.all(sGreen)
            : MaterialStateProperty.all(sBlack),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(left: 8, right: 8),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        side: onOrOff
            ? MaterialStateProperty.all(
                const BorderSide(color: sWhite),
              )
            : MaterialStateProperty.all(
                const BorderSide(color: sWhite),
              ),
      ),
      onPressed: () {
        setState(() {
          onOrOff = !onOrOff;
        });
      },
      child: Text(
        widget.title,
        style: const TextStyle(fontSize: 10, color: sWhite),
      ),
    );
  }
}

class SearchCards extends StatelessWidget {
  final double contHeight;
  final List costList;
  final int count;

  const SearchCards({
    Key? key,
    required this.contHeight,
    required this.costList,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: contHeight,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: count,
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 120,
              width: ResSize.screenWidth / 2 - 25,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(costList[index * 2])),
                // color: Colors.purple,
              ),
            ),
            Container(
              height: 120,
              width: ResSize.screenWidth / 2 - 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(costList[index * 2 + 1]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
