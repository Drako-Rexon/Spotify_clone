import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/components/res_size.dart';

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
        color: AppColor.lightGrey.withOpacity(0.45),
        borderRadius: BorderRadius.all(Radius.circular(8)),
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
              SizedBox(width: 7),
              Container(
                width: 70,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: AppColor.spotifyWhite,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 18,
              color: AppColor.spotifyWhite,
            ),
          ),
        ],
      ),
    );
  }
}
