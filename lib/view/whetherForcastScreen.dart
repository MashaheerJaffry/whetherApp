// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whetherapp/view/searchScreen.dart';

import '../services/whetherData.dart';
import '../widgets/whetherList.dart';

class WeatherForecastScreen extends StatefulWidget {
  const WeatherForecastScreen({super.key});

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final weatherData = Provider.of<WeatherDataProvider>(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff20203a), Color(0xff363b65)])),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              SearchWidget(
                onSearch: (city) {
                  weatherData.fetchWeatherData(city);
                },
              ),
              if (weatherData.loading)
                const CircularProgressIndicator(
                  color: Colors.blue,
                )
              else if (weatherData.error.isNotEmpty)
                Text('Error: ${weatherData.error}')
              else
                //to get whether data in the form of list and show it
                Expanded(
                  child: WeatherList(weatherData.weatherData),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }
}
