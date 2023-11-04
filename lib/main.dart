import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whetherapp/services/whetherData.dart';
import 'package:whetherapp/view/whetherForcastScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherDataProvider()),
      ],
      child: const MiApp(),
    ),
  );
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherForecastScreen(),
    );
  }
}
