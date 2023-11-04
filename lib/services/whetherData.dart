import 'package:flutter/material.dart';

import 'api.dart';

class WeatherData {
  final DateTime date;
  final double temperature;
  final String weatherCondition;
  final String iconAsset;

  WeatherData({
    required this.date,
    required this.temperature,
    required this.weatherCondition,
    required this.iconAsset,
  });
}

class WeatherDataProvider with ChangeNotifier {
  List<WeatherData> weatherData = [];
  bool loading = false;
  String error = '';
// get whether api instance
  final WeatherApi _api = WeatherApi();

  Future<void> fetchWeatherData(String city) async {
    loading = true;
    error = '';

    try {
      final data = await _api.getWeatherData(city);

      final List<WeatherData> tempWeatherData = [];
//save it locally in class members
      for (var item in data['list']) {
        final DateTime date =
            DateTime.fromMillisecondsSinceEpoch(item['dt'] * 1000);
        final double temperature = item['main']['temp'].toDouble();
        final String weatherCondition = item['weather'][0]['description'];
        final String iconCode = item['weather'][0]['icon'];
//to assign the image according to whether
        final String iconAsset = getIconAssetFromCode(iconCode);
//assign values to instances
        final weatherData = WeatherData(
          date: date,
          temperature: temperature,
          weatherCondition: weatherCondition,
          iconAsset: iconAsset,
        );

        tempWeatherData.add(weatherData);
      }

      weatherData = tempWeatherData;
    } catch (e) {
      error = 'Failed to load weather data';
    } finally {
      loading = false;
      notifyListeners();
    }
  }

//to show images according to its iconCode
  String getIconAssetFromCode(String iconCode) {
    switch (iconCode) {
      case '01d':
        return 'assets/sunny.png';
      case '02d':
        return 'assets/cloudy.png';
      default:
        return 'assets/sunny.png'; // Use a default icon for unknown conditions
    }
  }
}
