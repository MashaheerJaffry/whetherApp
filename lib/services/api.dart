import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherApi {
  final String apiKey = 'deecf926acc654b1455d1c20d268f636';
  final String apiUrl = 'https://api.openweathermap.org/data/2.5/forecast';

  //Send request and get Filtered whether data according to cities
  Future<Map<String, dynamic>> getWeatherData(String city) async {
    final response = await http.get(Uri.parse('$apiUrl?q=$city&appid=$apiKey'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
