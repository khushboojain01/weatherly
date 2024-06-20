import 'package:flutter/material.dart';
import '../models/weather_models.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  WeatherWidget({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weather.cityName,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
          '${weather.temperature}°C',
          style: TextStyle(fontSize: 64),
        ),
        /*Text(
          weather.description,
          style: TextStyle(fontSize: 24),
        ),*/
        Image.network(
          'http://openweathermap.org/img/wn/${weather.icon}@2x.png',
        ),
      ],
    );
  }
}
