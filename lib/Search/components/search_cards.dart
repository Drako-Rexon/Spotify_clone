import 'package:flutter/material.dart';
import 'package:spotify_clone/_components/res_size.dart';

class SearchCards extends StatelessWidget {
  final double contHeight;
  final List costList;
  final int count;

  const SearchCards({
    Key? key,
    required this.contHeight,
    required this.costList, required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
