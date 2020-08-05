import 'package:flutter/material.dart';
import 'package:my_time/services/weather.dart';
import 'package:my_time/widgets/today_weather.dart';

class WeatherList extends StatefulWidget {
  @override
  _WeatherListState createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  void getLocationData() async {
    var weatherData = await WeatherService().getLocationWeather();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Time'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          children: [
            TodayWeather(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    getLocationData();
  }
}
