import 'package:flutter/material.dart';
import 'package:spotify_clone/homepage/components/card_home_top_page.dart';

class RowCardHomeTop extends StatelessWidget {
  const RowCardHomeTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardHomeTopPage(),
        CardHomeTopPage(),
      ],
    );
  }
}
