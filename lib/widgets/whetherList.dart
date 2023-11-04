import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/whetherData.dart';

class WeatherList extends StatelessWidget {
  final List<WeatherData> data;

  const WeatherList(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    //it shows data of the whether of a specific city which is being entered
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final weatherItem = data[index];
        // print('weatherItem.icon');
        // print(weatherItem.icon);
        return Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Color(0xff5836af), Color(0xff372a84)])),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Image.asset(weatherItem.iconAsset),
                title:
                    // Icon(weatherItem.icon),
                    Text(
                  '${weatherItem.date.toString().substring(0, 10)} [${weatherItem.date.toString().substring(11, 16)}]',
                  style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ), // Use weatherItem here
                subtitle: Text(
                  '${weatherItem.temperature}°C - ${weatherItem.weatherCondition}',
                  style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        );
      },
    );
  }
}
