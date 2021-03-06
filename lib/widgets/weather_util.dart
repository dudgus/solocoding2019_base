import 'package:flutter/material.dart';
import 'package:flutter_weather/data/assets/assets.dart';

class WeatherUtil {
  static Image getWeatherIcon({int code, double width, double height}) {
    String asset = Assets.iconCloud;
    if (code >= 200 && code <= 299) {
      asset = Assets.iconThunder;
    } else if (code >= 300 && code <= 399) {
      asset = Assets.iconCloudLittleRain;
    } else if (code >= 500 && code <= 599) {
      asset = Assets.iconRain;
    } else if (code >= 600 && code <= 699) {
      asset = Assets.iconSnow;
    } else if (code >= 700 && code <= 799) {
      asset = Assets.iconDust;
    } else if (code == 800) {
      asset = Assets.iconSun;
    } else if (code == 801) {
      asset = Assets.iconCloudSun;
    } else if (code >= 802) {
      asset = Assets.iconCloud;
    }
    return Image.asset(
      asset,
      width: width,
      height: height,
    );
  }

  static String formatTemperature(double temperature) {
    var unit = "°C";
    temperature = temperature.floor().toDouble() - 273.15;

    return "${temperature.toStringAsFixed(0)} $unit";
  }
}