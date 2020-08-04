import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodayWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/sunny.svg',
              width: 100,
              height: 100,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('18º'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
