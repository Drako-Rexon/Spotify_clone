import 'package:flutter/material.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:spotify_clone/album.dart';

class MusicPlayer extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;

  const MusicPlayer(
      {Key? key,
      required this.title,
      required this.description,
      required this.color,
      required this.img,
      required this.songUrl})
      : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getAppBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert_outlined,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget getAppBody() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 40,
                  left: 40,
                  top: 20,
                ),
                child: Container(
                  width: size.width - 80,
                  height: size.width - 80,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: widget.color,
                        blurRadius: 50,
                        spreadRadius: 5,
                        // ! offset: Offset(-10, 40),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 40,
                  left: 40,
                  top: 20,
                ),
                child: Container(
                  width: size.width - 80,
                  height: size.width - 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.img,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: size.width - 100,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FeatherIcons.folderPlus,
                  color: Colors.white,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        widget.description,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  FeatherIcons.moreVertical,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Slider(
              activeColor: primary,
              value: _currentSliderValue,
              max: 200,
              min: 0,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1:50',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Text(
                  '4:28',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.shuffle,
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.skipBack,
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                      color: primary,
                      shape: BoxShape.circle,
                    ),
                    
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.skipForward,
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.repeat,
                    color: Colors.white.withOpacity(0.8),
                    size: 25,
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
