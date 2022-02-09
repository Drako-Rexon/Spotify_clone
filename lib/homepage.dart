// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_clone/album.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify_clone/song_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  int activeMenu2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getAppbody(),
    );
  }

  Widget getAppbody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(song_type_1.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                        left: 20,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMenu1 = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              song_type_1[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: activeMenu1 == index
                                    ? const Color(0xFF1ed661)
                                    : Colors.grey,
                                fontFamily: 'Proxima Nova',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            activeMenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF1ed661),
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    children: List.generate(songs.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: AlbumPage(
                                song: songs[index],
                              ),
                              type: PageTransitionType.scale,
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 25,
                              ),
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        songs[index]["img"],
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(11),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              songs[index]["title"],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 140,
                              child: Text(
                                songs[index]["description"],
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 90,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          left: 20,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              activeMenu2 = index;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                song_type_1[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: activeMenu2 == index
                                      ? const Color(0xFF1ed661)
                                      : Colors.grey,
                                  fontFamily: 'Proxima Nova',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              activeMenu2 == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF1ed661),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: List.generate(songs.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: AlbumPage(
                                  song: songs[index],
                                ),
                                type: PageTransitionType.scale,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 25,
                                ),
                                child: Container(
                                  width: 160,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          songs[index]["img"],
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                songs[index]["title"],
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 140,
                                child: Text(
                                  songs[index]["description"],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSize getAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Proxima Nova',
                  ),
                ),
                Icon(Icons.toc_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
