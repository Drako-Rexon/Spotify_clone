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
                  Text(
                    "NEW RELEASE FROM",
                    style: TextStyle(
                      color: AppColor.spotifyWhite,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'DEAN LEWIS',
                    style: TextStyle(
                      color: AppColor.spotifyWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // * Music Card
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: AppColor.lightGrey,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/home/Pic-1.png'),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
