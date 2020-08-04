import 'package:flutter/material.dart';
import 'package:my_time/screens/weather_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WeatherList());
  }
}
