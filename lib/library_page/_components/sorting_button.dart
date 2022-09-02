import 'package:flutter/material.dart';
import 'package:spotify_clone/components/colors.dart';
import 'package:spotify_clone/homepage/components/regular_text.dart';

class SortingButtons extends StatefulWidget {
  SortingButtons({
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
            ? MaterialStateProperty.all(Colors.amber)
            : MaterialStateProperty.all(AppColor.spotifyBlack),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(left: 8, right: 8),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: AppColor.spotifyWhite),
        ),
      ),
      onPressed: () {
        setState(() {
          onOrOff = !onOrOff;
        });
      },
      child: RegularText(
        text: widget.title,
        textSize: 10,
      ),
    );
  }
}
