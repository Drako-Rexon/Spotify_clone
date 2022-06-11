import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';

class CardHomeTopPage extends StatelessWidget {
  const CardHomeTopPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResSize.halfwidth - 30,
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.lightGrey.withOpacity(0.45),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home/Art-5.png'),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Liked Songs",
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: AppColor.spotifyWhite,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: AppColor.spotifyWhite,
            ),
          ),
        ],
      ),
    );
  }
}
